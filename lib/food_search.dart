import 'dart:async';

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
          backgroundColor: Colors.lightGreen,
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
                    var card = Card(color: Colors.yellow[100],
                      child: Column(
                        children: <Widget>[
                          Row(children: <Widget>[
                            Row(
                              children: <Widget>[Text("ชื่อร้าน : ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                Padding(
                                    padding: EdgeInsets.all(7.0),
                                    child: Text(
                                      document['nameStore'],
                                      style: TextStyle(fontSize: 18.0),

                                    )
                                    ),
                              ],
                            ),

                          ]),
                          Image.network(
                            document['image'][0],
                            width: 200,
                            height: 200,
                            
                          ),
                          Row(children: <Widget>[
                            Row(
                              children: <Widget>[Text("โซน : ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                Padding(
                                    padding: EdgeInsets.all(7.0),
                                    child: Text(
                                      document['zone'].toString(),
                                      style: TextStyle(fontSize: 18.0),

                                    )
                                    ),
                              ],
                            ),
                          ]),
                          Row(children: <Widget>[
                            Row(
                              children: <Widget>[Text("ประเภทสินค้า : ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                Padding(
                                    padding: EdgeInsets.all(7.0),
                                    child: Text(
                                      document['category'].toString(),
                                      style: TextStyle(fontSize: 18.0),

                                    )
                                    ),
                              ],
                            ),
                          ]),
                          Row(children: <Widget>[
                            Row(
                              children: <Widget>[
                                 Text("สินค้า : ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                Padding(
                                    padding: EdgeInsets.all(7.0),
                                    child: 
                                    Text(
                                      document['products'].toString(),
                                      style: TextStyle(fontSize: 18.0),

                                    )
                                    ),
                              ],
                            ),
                          ]),
                          
                        ],
                      ),
                      
                    );
                    return Center(child: card);
                  }).toList(),
                );
            }
          },
        ));
  }
}
