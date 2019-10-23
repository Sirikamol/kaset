import 'dart:io';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kasetsart/food_class.dart';
import 'package:kasetsart/image_service.dart';


class UpdatePage extends StatefulWidget {
  UpdatePage({Key key, this.docID}) : super(key: key);
  final String docID;

  
  _UpdatePageState createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  String dropdownValue = 'A';
  String dropdownValue2 = 'การเกษตร';

  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  var label1;
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }

  FoodClass newFood = new FoodClass();

  void _onUpdate() async {
    final FormState form = _formKey.currentState;
    form.save(); //This invokes each onSaved event

    print('Form save called, newContact is now up to date...');
    print('Name: ${newFood.nameStore}');
    print('Name: ${newFood.category}');
    print('Name: ${newFood.zone}');
    print('Name: ${newFood.products}');
    print(_image);
    String imgUrl = await onImageUploading(_image);
    print(imgUrl);

    if (imgUrl.isNotEmpty) {
      Firestore.instance.collection('food').document(widget.docID).updateData({
        'nameStore': newFood.nameStore,
        'category': newFood.category,
        'products': [newFood.products],
        'zone': newFood.zone,
        'image': [imgUrl],
      });
    }
    
  }

  Widget _buildProductsForm(List<dynamic> products) {
    return new Row(children: products.map((item) => new Text(item)).toList());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[300],
          title: Text('UpdateStore'),
        ),
        
        body: SafeArea(
          top: false,
          bottom: false,
          child: Form(
            key: _formKey,
          // color: Colors.green[50],
          child: StreamBuilder(
            stream: Firestore.instance
                .collection('food')
                .document(widget.docID)
                .snapshots(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              print(snapshot.data);
              var document = snapshot.data;
              return ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              TextFormField(
                initialValue: document['nameStore'],
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'ชื่อร้าน',
                    labelText: 'กรอกชื่อร้าน'
                ),
                onSaved: (val) => newFood.nameStore = val,
              ),

              TextFormField(
                initialValue: document['products'][0],
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'สินค้า',
                    labelText: 'กรอกสินค้า'
                ),
                onSaved: (val) => newFood.products = val,
              ),

              RaisedButton(
                onPressed: getImage,
                child: Icon(Icons.add_a_photo),
              ),
              Center(
                child: _image == null
                    ? Image.network(document["image"][0],
                    width: 250,height: 150,)
                    : Image.file(
                        _image,
                        width: 250,
                        height: 150,
                      ),
              ),
              Row(
                children: <Widget>[
                  label1 = Text("โซน", style: TextStyle(fontSize: 18)),
                  DropdownButton<String>(
                    // value: document['zone'],
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                      newFood.zone = newValue;
                    },
                    items: <String>['A', 'B', 'C', 'D']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              )
            ],
          ),
          _buildProductsForm(document['products']),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  label1 = Text("ประเภท",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  DropdownButton<String>(
                    value: dropdownValue2,
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue2 = newValue;
                      });
                      newFood.category = newValue;
                    },
                    items: <String>['การเกษตร', 'ของกิน', 'ของใช้', 'สัตว์']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              )
            ],
          ),
          Container(
              padding: EdgeInsets.only(),
              child: RaisedButton(
                child: Text('Update'),
                onPressed: _onUpdate,
              )),
        ],
        );
            },
          ),
        )
        
     ), );
  }
}
