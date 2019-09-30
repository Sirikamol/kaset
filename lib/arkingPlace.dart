import 'package:flutter/material.dart';


class ArkingPlace extends StatefulWidget {
  ArkingPlace ({Key key, this.title}) : super(key: key);
  final String title;
  _ArkingPlaceState createState() => _ArkingPlaceState();
}

class _ArkingPlaceState extends State<ArkingPlace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[300],
          title: Text("ARKING PLACE"),
        ),
        body: oneSec,
        );
}
}

Widget oneSec = Column(
  children: <Widget>[
    Container(height: 250, width: 1500, child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        _buildCardListView1(),
        ],)   ,)],);

Card _buildCardListView1() {
  return Card(child: Image.network(
      "http://kps.ku.ac.th/v8/images/bg/kps-bus-routes.jpg"),);
}
