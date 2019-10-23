import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FoodEdit extends StatefulWidget {
  FoodEdit({
    Key key,
  }) : super(key: key);

  _FoodEditState createState() => _FoodEditState();
}

class _FoodEditState extends State<FoodEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[300],
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
                    return Center(
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
                          Image.network(
                            document['image'][0],
                          ),
                          Padding(
                              padding: EdgeInsets.all(7.0),
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.all(7.0),
                                    child: Icon(Icons.thumb_up),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(7.0),
                                    child: Text(
                                      'Like',
                                      style: TextStyle(fontSize: 18.0),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(7.0),
                                    child: Icon(Icons.comment),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(7.0),
                                    child: Text('Comments',
                                        style: TextStyle(fontSize: 18.0)),
                                  )
                                ],
                              ))
                        ],
                      ),
                    ));
                  }).toList(),
                );
            }
          },
        ));
  }
}
