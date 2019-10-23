import 'dart:io';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kasetsart/food_class.dart';
import 'package:kasetsart/image_service.dart';


class InsertPage extends StatefulWidget {
  InsertPage({Key key}) : super(key: key);

  @override
  _InsertPageState createState() => _InsertPageState();
}

class _InsertPageState extends State<InsertPage> {
  String dropdownValue = 'A';
  String dropdownValue1 = '1';
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

  void _onSubmit() async {
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

    Firestore.instance.collection('food').document().setData({
      'nameStore': newFood.nameStore,
      'category': newFood.category,
      'products': [newFood.products],
      'zone': newFood.zone,
      'image': [imgUrl],
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _formKey,
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              
              RaisedButton(
                onPressed: getImage,
                child: Icon(Icons.add_a_photo),
              ),
              Center(
                child: _image == null
                    ? Text('No image selected.')
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
                    value: dropdownValue,
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
          Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'ชื่อร้าน',
                    labelText: 'กรอกชื่อร้าน'),
                onSaved: (val) => newFood.nameStore = val,
              ),
            ],
          ),
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
                child: Text('Submit'),
                onPressed: _onSubmit,
              )),
        ],
      ),
    ));
  }
}
