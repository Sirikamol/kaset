import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/painting.dart';
import 'app_navigate.dart';

class AgricultureEdit extends StatefulWidget {
  AgricultureEdit({
    Key key,
  }) : super(key: key);

  _AgricultureEditState createState() => _AgricultureEditState();
}

class _AgricultureEditState extends State<AgricultureEdit> {
  Future _onDelete(String docID) async {
    Firestore.instance.collection('agriculture').document(docID).delete();
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => navigateToInsertAgriculturePage(context),
          child: Icon(Icons.add),
          backgroundColor: Colors.lightGreen,
        ),
        body: StreamBuilder<QuerySnapshot>(
          stream: Firestore.instance.collection('agriculture').snapshots(),
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
                    var card = new Card(
                      color: Colors.yellow[100],
                      child: Column(
                        children: <Widget>[
                          Row(children: <Widget>[
                            Text(
                              "ชื่อร้าน : ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Padding(
                                padding: EdgeInsets.all(7.0),
                                child: Text(
                                  document['nameStore'].toString(),
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
                                      navigateToUpdateAgriculturePage(
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
                    );
                    return Container(
                      child: Center(child: card),
                    );
                  }).toList(),
                );
            }
          },
        ));
  }
}
