import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/painting.dart';
import 'package:kasetsart/app_navigate.dart';

class FoodEdit extends StatefulWidget {
  FoodEdit({
    Key key,
  }) : super(key: key);

  _FoodEditState createState() => _FoodEditState();
}

class _FoodEditState extends State<FoodEdit> {
  Future _onDelete(String docID) async {
    Firestore.instance.collection('food').document(docID).delete();
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => navigateToInsertPage(context),
          child: Icon(Icons.add),
          backgroundColor: Colors.lightGreen,
        ),
        body: StreamBuilder<QuerySnapshot>(
          stream: Firestore.instance.collection('food').snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) return Text('Error: ${snapshot.error}');
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return Text('Loading...');
              default:
                return ListView(
                  children:
                      snapshot.data.documents.map((DocumentSnapshot document) {
                    return Container(
                      child: Center(
                          child: Card(
                        child: Column(
                          children: <Widget>[
                            Row(children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.all(7.0),
                                  child: Text(
                                    document['nameStore'],
                                    style: TextStyle(fontSize: 18.0),
                                  )),
                            ]),
                            Row(
                              children: <Widget>[
                                Image.network(
                                  document['image'][0],
                                  width: 200,
                                  height: 200,
                                ),
                              ],
                            ),
                            ButtonTheme.bar(
                              child: ButtonBar(
                                children: <Widget>[
                                  FlatButton(
                                      child: const Text("Update"),
                                      onPressed: () {
                                        navigateToUpdatePage(
                                            context, document.documentID);
                                      }),
                                  FlatButton(
                                      child: const Text("Delete"),
                                      onPressed: () {
                                        _onDelete(document.documentID);
                                      }),
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                    );
                  }).toList(),
                );
            }
          },
        ));
  }
}
