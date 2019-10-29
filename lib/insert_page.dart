import 'dart:io';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kasetsart/food.dart';
import 'package:kasetsart/image_service.dart';

class InsertPage extends StatefulWidget {
  InsertPage({Key key, this.docID}) : super(key: key);
  final String docID;
  @override
  _InsertPageState createState() => _InsertPageState();
}

class _InsertPageState extends State<InsertPage> {
  String dropdownValue = 'A';
  String dropdownValue1 = '1';
  String dropdownValue2 = 'การเกษตร';

  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  List<String> _insertProducts = List();
  var label1;
  File _image;
  int productCount;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }

  @override
  void initState() {
    super.initState();
    productCount = 0;
  }

  List<Widget> _getListings() {
    List listings = new List<Widget>();
    int i = 0;
    for (i = 0; i < productCount; i++) {
      listings.add(TextFormField(
          decoration: InputDecoration(
              icon: Icon(Icons.account_balance),
              hintText: 'กรอกสินค้า',
              labelText: 'สินค้า'),
          onSaved: (val) => {
                if (val.isNotEmpty) {_insertProducts.add(val)}
              }));
    }
    return listings;
  }

  void addList() {
    setState(() {
      productCount++;
    });
    print(productCount);
  }

  void removeList() {
    setState(() {
      productCount--;
    });
    print(productCount);
  }

  Food newFood = Food();

  void _onSubmit() async {
    final FormState form = _formKey.currentState;
    print(form);
    setState(() {
      _insertProducts = [];
    });
    form.save(); //This invokes each onSaved event

    print('Form save called, newContact is now up to date...');
    print('Name: ${newFood.nameStore}');
    print('Category: ${newFood.category}');
    print('Zone: ${newFood.zone}');
    print(_insertProducts);
    print(_image);
    String imgUrl = await onImageUploading(_image);
    print(imgUrl);

    Firestore.instance.collection('food').document(widget.docID).setData({
      'nameStore': newFood.nameStore,
      'category': newFood.category,
      'products': _insertProducts,
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
                        ? Text('Image')
                        : Image.file(
                            _image,
                            width: 250,
                            height: 150,
                          ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                        icon: Icon(Icons.account_balance),
                        hintText: 'ชื่อร้าน',
                        labelText: 'กรอกชื่อร้าน'),
                    onSaved: (val) => newFood.nameStore = val,
                  ),
                ],
              ),
              Column(
                children: _getListings(),
              ),
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      label1 = Text("ประเภท",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
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
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            addList();
          },
        ));
  }
}
