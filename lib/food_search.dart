import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FoodSearch extends StatefulWidget {
  FoodSearch({Key key, this.category}) : super(key: key);
  final String category;
  _FoodSearchState createState() => _FoodSearchState();
}

class _FoodSearchState extends State<FoodSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[300],
          title: Text(widget.category),
        ),
        body: StreamBuilder<QuerySnapshot>(
          stream: Firestore.instance
              .collection('food')
              .where('products', arrayContains: widget.category)
              .snapshots(),
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
                    var card = Card(
                      child: Column(
                        children: <Widget>[
                          Row(children: <Widget>[
                            Padding(
                                padding: EdgeInsets.all(7.0),
                                child: Text(
                                  document['nameStore'],
                                  style: TextStyle(fontSize: 18.0),
                                )
                                ),

                          ]),
                          Image.network(
                            document['image'][0],
                          ),

                          // Padding(
                          //     padding: EdgeInsets.all(7.0),
                          //     child: Row(
                          //       children: <Widget>[
                          //         Padding(
                          //           padding: EdgeInsets.all(7.0),
                          //           child: Icon(Icons.thumb_up),
                          //         ),
                          //         Padding(
                          //           padding: EdgeInsets.all(7.0),
                          //           child: Text(
                          //             'Like',
                          //             style: TextStyle(fontSize: 18.0),
                          //           ),
                          //         ),
                          //         Padding(
                          //           padding: EdgeInsets.all(7.0),
                          //           child: Icon(Icons.comment),
                          //         ),
                          //         Padding(
                          //           padding: EdgeInsets.all(7.0),
                          //           child: Text('Comments',
                          //               style: TextStyle(fontSize: 18.0)),
                          //         )
                          //       ],
                          //     ))
                        ],
                      ),
                    );
                    return Center(
                      
                        child: card);
                  }).toList(),
                );
            }
          },
        ));
  }
}
