import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class InsertPage extends StatefulWidget {
  InsertPage({Key key, this.title}) : super(key: key);
  final String title;
  _InsertPageState createState() => _InsertPageState();
}

class _InsertPageState extends State<InsertPage> {
  TextEditingController ctrlUsername = TextEditingController();
  TextEditingController ctrlPassword = TextEditingController();
  TextEditingController ctrlImage = TextEditingController();
  List<String> _colors = <String>[ 'A', 'B', 'C', 'D'];
  String _color = '';
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }


  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            color: Colors.blueGrey,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                          child: _image == null
                              ? Text('No image selected.')
                              : Image.file(_image),
                        ),
                  RaisedButton(
                    onPressed: getImage,
                    child: Icon(Icons.add_a_photo),
                  ),
                  Row(
                    children: <Widget>[
                      new FormField(
                        builder: (FormFieldState state) {
                          return InputDecorator(
                            decoration: InputDecoration(
                              icon: const Icon(Icons.color_lens),
                              labelText: 'Zone',
                            ),
                            isEmpty: _color == '',
                            child: new DropdownButtonHideUnderline(
                              child: new DropdownButton(
                                value: _color,
                                isDense: true,
                                onChanged: (String newValue) {
                                  setState(() {
                                    var newContact;
                                    newContact.favoriteColor = newValue;
                                    _color = newValue;
                                    state.didChange(newValue);
                                  });
                                },
                                items: _colors.map((String value) {
                                  return new DropdownMenuItem(
                                    value: value,
                                    child: new Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          );
                      }
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: <Widget>[
                      TextFormField(
                        validator: (String value) {
                          if (value.isEmpty) return 'กรุณาระบุชื่อผู้ใช้งาน';
                        },
                        controller: ctrlUsername,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.store),
                            labelText: 'NameStore',
                            labelStyle:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                            filled: true,
                            fillColor: Colors.white70,
                            border: InputBorder.none),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      TextFormField(
                        validator: (String value) {
                          if (value.isEmpty) return 'กรุณาระบุรหัสผ่าน';
                        },
                        controller: ctrlPassword,
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.pie_chart_outlined),
                            labelText: 'Product',
                            labelStyle:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                            filled: true,
                            fillColor: Colors.white70,
                            border: InputBorder.none),
                      ),
                    ],
                  ),
                  TextFormField(
                    validator: (String value) {
                      if (value.isEmpty) return 'กรุณาระบุชื่อผู้ใช้งาน';
                    },
                    controller: ctrlImage,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.store),
                        labelText: 'Image',
                        labelStyle:
                            TextStyle(color: Colors.white, fontSize: 20.0),
                        filled: true,
                        fillColor: Colors.white70,
                        border: InputBorder.none),
                  ),
                ]
              ),
            ),
          )
        ],
      ),
    );
  }
}
