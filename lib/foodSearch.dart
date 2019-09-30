import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kasetsart/foodPage.dart';




class FoodSearch extends StatefulWidget {
  FoodSearch({Key key,
  this.category

  }) : super(key: key);
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
      stream: Firestore.instance.collection('store').where("category", isEqualTo: widget.category).snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError)
          return new Text('Error: ${snapshot.error}');
        switch (snapshot.connectionState) {
          case ConnectionState.waiting: return new Text('Loading...');
          default:
            return new ListView(
              children: snapshot.data.documents.map((DocumentSnapshot document) {
                return Center(
                  child: Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                         ListTile(
                          title: Text(document['nameStore']),
                          subtitle: Image.network(document["image"][0]),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            );
        }
      },
    ));
}
}


