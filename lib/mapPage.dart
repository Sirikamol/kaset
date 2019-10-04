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
        body: ListView(children: <Widget>[
              oneSec,
              twoSec,
        ],),
    );
  }
}

Widget oneSec = Column(crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[
    Container(height: 350, width: 1500, child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        _buildCardListView1(),
        ],)   ,)],);

Card _buildCardListView1() {
  return Card(child: Image.network(
      "http://cdn.gotoknow.org/assets/media/files/000/649/246/large_9KU9.jpg?1290609025"),);
}
Widget twoSec =Column(
  children: <Widget>[
        Text(">> Zone A = ของกิน + ของใช้ทั่วไป",
          style: TextStyle(color: Colors.black, fontSize: 18)),
        Text(">> Zone B = สัตว์ + ของใช้ทั่วไป",
          style: TextStyle(color: Colors.black, fontSize: 18),),
        Text(">> Zone C = เกษตร + ของใช้ทั่วไป",
          style: TextStyle(color: Colors.black, fontSize: 18),),
        Text(">> Zone D = ของกิน + ของใช้ทั่วไป",
          style: TextStyle(color: Colors.black, fontSize: 18),),
  ], );
