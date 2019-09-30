import 'package:flutter/material.dart';


class MapPage extends StatefulWidget {
  MapPage ({Key key, this.title}) : super(key: key);
  final String title;
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[300],
          title: Text("MAP"),
        ),
        body: oneSec,
        );
}
}

Widget oneSec = Column(
  children: <Widget>[
    Container(height: 210, width: 1500, child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        _buildCardListView1(),
        ],)   ,)],);

Card _buildCardListView1() {
  return Card(child: Image.network(
      "http://cdn.gotoknow.org/assets/media/files/000/649/246/large_9KU9.jpg?1290609025"),);
}
