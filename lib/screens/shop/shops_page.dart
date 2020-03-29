import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../services/app_navigate.dart';
import '../../services/firebase_service.dart';

class ShopsPage extends StatefulWidget {
  ShopsPage({
    this.category,
    Key key,
  }) : super(key: key);

  final String category;

  _ShopsPageState createState() => _ShopsPageState();
}

class _ShopsPageState extends State<ShopsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Text(widget.category),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => navigateToInsertAgriculturePage(context),
          child: Icon(Icons.add),
          backgroundColor: Colors.lightGreen,
        ),
        body: StreamBuilder<QuerySnapshot>(
          stream: Firestore.instance.collection(widget.category).snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) return Text('Error: ${snapshot.error}');
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return Center(
                    child: Container(
                  child: CircularProgressIndicator(),
                ));
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
                              "ชื่อร้าน : ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  document['name'],
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
                                      navigateToUpdateAgriculturePage(
                                          context, document.documentID);
                                    }),
                                FlatButton(
                                    child: const Text("Delete",
                                        style: TextStyle(fontSize: 15)),
                                    textColor: Colors.lightGreen,
                                    onPressed: () {
                                      FirebaseService().onDelete(
                                          document.documentID, widget.category);
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
