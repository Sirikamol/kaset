import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';
import 'package:location/location.dart';
import '../../models/store.dart';
import '../../services/image_service.dart';
import 'package:flutter/services.dart';

class UpdateStore extends StatefulWidget {
  UpdateStore({Key key, this.docID}) : super(key: key);
  final String docID;
  UpdateStoreState createState() => UpdateStoreState();
}

class UpdateStoreState extends State<UpdateStore> {
  String dropdownValue = '';
   final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }
  LocationData _startLocation;
  LocationData _currentLocation;

  StreamSubscription<LocationData> _locationSubscription;

  Location _locationService = new Location();
  bool _permission = false;
  String error;

  bool currentWidget = true;
  Store newStore = new Store();

  @override
  void initState() {
    super.initState();

    _initPlatformState();
  }

  _initPlatformState() async {
    await _locationService.changeSettings(
        accuracy: LocationAccuracy.HIGH, interval: 1000);

    LocationData location;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      bool serviceStatus = await _locationService.serviceEnabled();
      print("Service status: $serviceStatus");
      if (serviceStatus) {
        _permission = await _locationService.requestPermission();
        print("Permission: $_permission");
        if (_permission) {
          location = await _locationService.getLocation();

          _locationSubscription = _locationService
              .onLocationChanged()
              .listen((LocationData result) async {
            setState(() {
              _currentLocation = result;
            });
          });
          print(_currentLocation.latitude);
        }
      } else {
        bool serviceStatusResult = await _locationService.requestService();
        print("Service status activated after request: $serviceStatusResult");
        if (serviceStatusResult) {
          _initPlatformState();
        }
      }
    } on PlatformException catch (e) {
      print(e);
      if (e.code == 'PERMISSION_DENIED') {
        error = e.message;
      } else if (e.code == 'SERVICE_STATUS_ERROR') {
        error = e.message;
      }
      location = null;
    }

    setState(() {
      _startLocation = location;
    });
  }
  
  void _onUpdate() async {
    final FormState form = _formKey.currentState;
    form.save(); //This invokes each onSaved event

    print('Form save called, newContact is now up to date...');
    print('Name: ${newStore.store_name}');
    print('Name: ${newStore.store_category}');
    print(_image);
    String imgUrl = await onImageUploading(_image);
    print(imgUrl);
    print(_startLocation.latitude);
    print(_startLocation.longitude);

    if (imgUrl.isNotEmpty) {
      Firestore.instance.collection('store').document(widget.docID).updateData({
        'store_name': newStore.store_name,
        'store_category': newStore.store_category,
        'image': [imgUrl],
        'location': [_startLocation.latitude, _startLocation.longitude]
      });
    }
  }
  void _onDelete() async {
    final FormState form = _formKey.currentState;
    form.save();
    print('Form save called, newContact is now up to date...');
    print('Name: ${newStore.store_name}');
    print('Name: ${newStore.store_category}');
    print(_image);
    String imgUrl = await onImageUploading(_image);
    print(imgUrl);
    print(_startLocation.latitude);
    print(_startLocation.longitude);

    if (imgUrl.isNotEmpty) {
      Firestore.instance.collection('store').document(widget.docID).updateData({
        'store_name': newStore.store_name,
        'store_category': newStore.store_category,
        'image': [imgUrl],
        'location': [_startLocation.latitude, _startLocation.longitude]
      });
    }
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
                .collection('store')
                .document(widget.docID)
                .snapshots(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              print(snapshot.data);
              var document = snapshot.data;
              return ListView(
                children: <Widget>[
                  TextFormField(
                    initialValue: document['store_name'],
                    decoration: InputDecoration(
                      icon: Icon(Icons.account_balance),
                      hintText: '?????????????????',
                      labelText: '????????',
                    ),
                    onSaved: (val) => newStore.store_name = val,
                  ),
                  Row(children: <Widget>[
                    Icon(Icons.beenhere),
                    Text('    ???????????????                  '),
                    DropdownButton<String>(
                      value: document['store_category'],
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValue = newValue;
                        });
                        newStore.store_category = newValue;
                      },
                      items: <String>[
                        '????????',
                        '?????????',
                        '?????????',
                        '????????',
                        '?????????'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ]),
                  Row(children: <Widget>[
                    RaisedButton(
                      onPressed: getImage,
                      child: Icon(Icons.add_a_photo)
                    ),
                     _image == null
                        ? Image.network(document["image"][0],width: 250,
                            height: 150,)
                        : Image.file(
                            _image,
                            width: 250,
                            height: 150,
                          )
                  ]),
                  Row(
                    children: <Widget>[
                      RaisedButton(
                          child: Text('?????????????????????'),
                          onPressed: () {
                        _initPlatformState();
                      }),
                    ],
                  ),
                Text('latitude:'),
                Text(_startLocation == null
                    ? document["location"][0].toString()
                    : _startLocation.latitude.toString()),
                Text('longitude:'),
                Text(
                  _startLocation == null
                      ? document["location"][1].toString()
                      : _startLocation.longitude.toString(),
                ),
                  Container(
                      padding: EdgeInsets.only(),
                      child: RaisedButton(
                        child: Text('Update'),
                        onPressed: _onUpdate,
                      )),
                  Container(
                      padding: EdgeInsets.only(),
                      child: RaisedButton(
                        child: Text('Delete'),
                        onPressed: _onDelete,
                      )),
                ],
              );
            },
          ),
        )
        ));
  }
}
