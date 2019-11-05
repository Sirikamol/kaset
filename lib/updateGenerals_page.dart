import 'dart:io';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'app_navigate.dart';
import 'general.dart';
// import 'package:kasetsart/food.dart';
import 'package:kasetsart/image_service.dart';

class UpdateGeneralsPage extends StatefulWidget {
  UpdateGeneralsPage({Key key, this.docID}) : super(key: key);
  final String docID;

  _UpdateGeneralsPageState createState() => _UpdateGeneralsPageState();
}

class _UpdateGeneralsPageState extends State<UpdateGeneralsPage> {
  String dropdownValue = 'A';
  String dropdownValue2 = 'การเกษตร';

  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  List<String> _updateProducts = List();

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
                if (val.isNotEmpty) {_updateProducts.add(val)}
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

  Generals newGenerals = new Generals();

  Future<Null> _onUpdate(DocumentSnapshot document) async {
    final FormState form = _formKey.currentState;
    print(form);
    setState(() {
      _updateProducts = [];
    });
    form.save();

    print(document['products']);

    print('Form save called, newContact is now up to date...');
    print('Name: ${newGenerals.nameStore}');
    print('Category: ${newGenerals.category}');
    print('Zone: ${newGenerals.zone}');
    print(_updateProducts);
    print(_image);
    if (_image != null) {
      String imgUrl = await onImageUploading(_image);
      print(imgUrl);
      Firestore.instance
          .collection('generals')
          .document(widget.docID)
          .updateData({
        'nameStore': newGenerals.nameStore,
        'category': newGenerals.category,
        'products': _updateProducts,
        'zone': newGenerals.zone,
        'image': [imgUrl],
      });
    } else {
      Firestore.instance
          .collection('generals')
          .document(widget.docID)
          .updateData({
        'nameStore': newGenerals.nameStore,
        'category': newGenerals.category,
        'products': _updateProducts,
        'zone': newGenerals.zone,
      });
    }
    // _alertinput();
    return null;
  }

  // Future<void> _alertinput() async {
  //   return showDialog<void>(
  //     context: context,
  //     barrierDismissible: false, // user must tap button!
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: Text('Input Success'),
  //         actions: <Widget>[
  //           FlatButton(
  //             child: Text('Ok'),
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //               navigateToGeneralEdit(context);
  //             },
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

  List<Widget> buildProductsForm(List<dynamic> products) {
    if (products != null) {
      return products
          .map((item) => TextFormField(
              initialValue: item,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.mode_edit),
                  hintText: 'สินค้า',
                  labelText: 'กรอกสินค้า ${products.indexOf(item) + 1}'),
              onSaved: (val) =>
                  _updateProducts.insert(products.indexOf(item), val)))
          .toList();
    }
    return [
      TextFormField(
          decoration: InputDecoration(
              border: InputBorder.none,
              icon: Icon(Icons.mode_edit),
              hintText: 'สินค้า',
              labelText: 'กรอกสินค้า 1'),
          onSaved: (val) => _updateProducts.insert(0, val)),
    ];
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
              child: StreamBuilder(
                stream: Firestore.instance
                    .collection('generals')
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
                                icon: Icon(Icons.account_balance),
                                hintText: 'ชื่อร้าน',
                                labelText: 'กรอกชื่อร้าน'),
                            style: TextStyle(fontSize: 18, color: Colors.black),
                            onSaved: (val) => newGenerals.nameStore = val,
                          ),
                          Center(
                            child: _image == null
                                ? Image.network(
                                    document["image"][0],
                                    width: 250,
                                    height: 150,
                                  )
                                : Image.file(
                                    _image,
                                    width: 250,
                                    height: 150,
                                  ),
                          ),
                          RaisedButton(
                            onPressed: getImage,
                            child: Icon(Icons.add_a_photo),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "รายการสินค้า",
                              style:
                                  TextStyle(fontSize: 22, color: Colors.black),
                            ),
                          ),
                          Column(
                              children:
                                  buildProductsForm(document['products'])),
                          Column(
                            children: _getListings(),
                          ),
                          Row(
                            children: <Widget>[
                              label1 =
                                  Text("โซน", style: TextStyle(fontSize: 18)),
                              DropdownButton<String>(
                                value: dropdownValue,
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownValue = newValue;
                                  });
                                  newGenerals.zone = newValue;
                                },
                                items: <String>[
                                  'A',
                                  'B',
                                  'C',
                                  'D'
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
                      Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              label1 = Text("ประเภท",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                              DropdownButton<String>(
                                value: dropdownValue2,
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownValue2 = newValue;
                                  });
                                  newGenerals.category = newValue;
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
                      Container(
                          padding: EdgeInsets.only(),
                          child: RaisedButton(
                              child: Text('Update'),
                              onPressed: () {
                                _onUpdate(document);
                              })),
                    ],
                  );
                },
              ),
            )),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            addList();
          },
        ));
  }
}