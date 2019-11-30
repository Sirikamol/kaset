import 'package:algolia/algolia.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/painting.dart';
import 'package:kasetsart/app_navigate.dart';
import 'algolia_service.dart';

class FoodEdit extends StatefulWidget {
  FoodEdit({
    Key key,
  }) : super(key: key);

  _FoodEditState createState() => _FoodEditState();
}

final algoliaService = AlgoliaService.instance;

class _FoodEditState extends State<FoodEdit> {
  // var objectID = Algolia;

  // static final algoliaService = AlgoliaService.instance();

  Future _onDelete(String docID) async {
    //  await algoliaService.performDeleteFoodObject(objectID);
    //     addedObject.index('food')
    //     .object(objectID)
    //     .deleteObject();
    // await algoliaService.performUpdateFoodObject(oD);

    Firestore.instance.collection('food').document(docID).delete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Text('Food'),
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
                                        navigateToUpdatePage(
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
                      )),
                    );
                  }).toList(),
                );
            }
          },
        ));
  }
}
