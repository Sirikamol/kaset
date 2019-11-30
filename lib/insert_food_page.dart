import 'dart:io';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'food.dart';
import 'app_navigate.dart';
import 'image_service.dart';
import 'algolia_service.dart';

class InsertPage extends StatefulWidget {
  InsertPage({Key key, this.docID}) : super(key: key);
  final String docID;
  @override
  _InsertFoodPageState createState() => _InsertFoodPageState();
}

class _InsertFoodPageState extends State<InsertPage> {
  String dropdownValue = 'A';
  String dropdownValue1 = '1';
  String dropdownValue2 = 'การเกษตร';

  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  List<String> _insertProducts = List();
  var label1;
  File _image;
  int productCount;
  final algoliaService = AlgoliaService.instance;

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
    print('ID: ${newFood.idStore}'); //*

    Map<String, dynamic> addData = {
      'nameStore': newFood.nameStore,
      'category': newFood.category,
      'products': _insertProducts,
      'zone': newFood.zone,
      'image': [imgUrl],
      'idStore': newFood.idStore,
    };
    var objectId = await algoliaService.performAddFoodObject(addData);
    addData.addAll({'objectID': objectId});
    await Firestore.instance
        .collection('food')
        .document(widget.docID)
        .setData(addData);
    // Firestore.instance
    //     .collection('food')
    //     .document(widget.docID)
    //     .setData(addData);
    // await algoliaService.performAddFoodObject(addData);

    _alertinput();
  }

  Future<void> _alertinput() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Input Success'),
          actions: <Widget>[
            FlatButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
                navigateToFoodEdit(context);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Text("Insert food"),
        ),
        body: Card(
          color: Colors.lightGreen[200],
          child: Form(
            key: _formKey,
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
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
                ),
                Padding(
                  //*
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                            icon: Icon(Icons.recent_actors),
                            hintText: 'เลขที่ร้าน',
                            labelText: 'กรอกเลขที่ร้าน'),
                        onSaved: (val) => newFood.idStore = val,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "  + กรุณาเพิ่มรายการสินค้า",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: _getListings(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          label1 = Text("        โซน         ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
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
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          label1 = Text("        ประเภท   ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                          DropdownButton<String>(
                            value: dropdownValue2,
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue2 = newValue;
                              });
                              newFood.category = newValue;
                            },
                            items: <String>[
                              'การเกษตร',
                              'ของกิน',
                              'ของใช้',
                              'สัตว์'
                            ].map<DropdownMenuItem<String>>((String value) {
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
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: _image == null
                            ? Text('Please select an image')
                            : Image.file(
                                _image,
                                width: 250,
                                height: 250,
                              ),
                      ),
                      RaisedButton(
                        color: Colors.lightGreen[100],
                        onPressed: getImage,
                        child: Icon(Icons.add_a_photo),
                      ),
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(),
                    color: Colors.lightGreen[300],
                    child: RaisedButton(
                      child: Text('Submit'),
                      color: Colors.lightGreen,
                      onPressed: _onSubmit,
                    )),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.add),
          label: Text("เพิ่มสินค้า"),
          backgroundColor: Colors.yellow[200],
          foregroundColor: Colors.black,
          onPressed: () {
            addList();
          },
        ));
  }
}
