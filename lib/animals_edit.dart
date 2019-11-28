import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'app_navigate.dart';

class AnimalsEdit extends StatefulWidget {
  AnimalsEdit({
    Key key,
  }) : super(key: key);

  _AnimalsEditState createState() => _AnimalsEditState();
}

class _AnimalsEditState extends State<AnimalsEdit> {
  Future _onDelete(String docID) async {
    Firestore.instance.collection('animal').document(docID).delete();
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Text('Animals'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => navigateToInsertAnimalsPage(context),
          child: Icon(Icons.add),
          backgroundColor: Colors.lightGreen,
        ),
        body: StreamBuilder<QuerySnapshot>(
          stream: Firestore.instance.collection('animal').snapshots(),
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
                      color: Colors.lightGreen[200],
                      child: Column(
                        children: <Widget>[
                          Row(children: <Widget>[
                            Text(
                              "   ชื่อร้าน : ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  document['nameStore'].toString(),
                                  style: TextStyle(fontSize: 18.0),
                                )),
                          ]),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                    child: const Text("Update",
                                        style: TextStyle(fontSize: 15)),
                                    textColor: Colors.lightGreen,
                                    onPressed: () {
                                      navigateToUpdateAnimalsPage(
                                          context, document.documentID);
                                    }),
                                FlatButton(
                                    child: const Text("Delete",
                                        style: TextStyle(fontSize: 15)),
                                    textColor: Colors.lightGreen,
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
