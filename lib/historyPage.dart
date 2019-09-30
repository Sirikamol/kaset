import 'package:flutter/material.dart';


class HistoryPage extends StatefulWidget {
  HistoryPage ({Key key, this.title}) : super(key: key);
  final String title;
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[300],
          title: Text("HISTORY"),
        ),
        body: ListView(children: <Widget>[
              oneSec,
              twoSec,
        ],)
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
      "https://dok7xy59qfw9h.cloudfront.net/649/297/682/1940003015-1rgp2ke-65mglf4oebr8545/original/_a16.jpg"),
      );
}

Widget twoSec = Column(
  children: <Widget>[
  
        Text("ประวัติมหาวิทยาลัยเกษตรศาสตร์",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
        Text("***************************************************************************************",
          style: TextStyle(color: Colors.grey[500], fontSize: 20),),

      ], );
 
