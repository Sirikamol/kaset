import 'package:flutter/material.dart';
import 'widgets.dart';

class TramPage extends StatefulWidget {
  TramPage({Key key, this.title}) : super(key: key);
  final String title;
  _TramPageState createState() => _TramPageState();
}

class _TramPageState extends State<TramPage> {
  Widget _pageSec() {
    return Card(
      color: Colors.lightGreen[300],
    child: Column(
      children: <Widget>[
        Container(
          height: 300,
          width: 300,
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.center,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Image.network("http://www.glurr.com/images/topic/0625953001434374767.png"),
              Image.network("http://kps.ku.ac.th/v8/images/bg/kps-bus-routes.jpg")
            ],
            
          ),

        ),
      ],
    ),
    );
  }

  Widget _aaSec() {
    return Card(

    child: Row(
      children: <Widget>[
        Text("      รอบ                              ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
        Text(
          "เวลา",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ],
    ),
    
    );
  }

  Widget _oneSec() {
    return Card(

    child: Row(
      children: <Widget>[
        Text("    รอบที่ 1    ",
            style: TextStyle(color: Colors.black, fontSize: 20)),
        Text(
          "                07:15  -  07:42  น.",
          style: TextStyle(color: Colors.grey, fontSize: 20),
        ),
      ],
    )
    );
  }

  Widget _twoSec() {
    return Card(

    child: Row(
      children: <Widget>[
        Text("    รอบที่ 2    ",
            style: TextStyle(color: Colors.black, fontSize: 20)),
        Text(
          "                08:05  -  08:32  น.",
          style: TextStyle(color: Colors.grey, fontSize: 20),
        ),
      ],
    )
    );
  }

  Widget _threeSec() {
    return Card(

    child: Row(
      children: <Widget>[
        Text("    รอบที่ 3    ",
            style: TextStyle(color: Colors.black, fontSize: 20)),
        Text(
          "                08:55  -  09:22  น.",
          style: TextStyle(color: Colors.grey, fontSize: 20),
        ),
      ],
    )
    );
  }

  Widget _fourSec() {
    return Card(

    child: Row(
      children: <Widget>[
        Text("    รอบที่ 4    ",
            style: TextStyle(color: Colors.black, fontSize: 20)),
        Text(
          "                09:45  -  10:12  น.",
          style: TextStyle(color: Colors.grey, fontSize: 20),
        ),
      ],
    )
    );
  }

  Widget _fiveSec() {
    return Card(

    child: Row(
      children: <Widget>[
        Text("    รอบที่ 5    ",
            style: TextStyle(color: Colors.black, fontSize: 20)),
        Text(
          "                10:35  -  11:02  น.",
          style: TextStyle(color: Colors.grey, fontSize: 20),
        ),
      ],
    )
    );
  }
  Widget _sixSec() {
    return Card(

    child: Row(
      children: <Widget>[
        Text("    รอบที่ 6    ",
            style: TextStyle(color: Colors.black, fontSize: 20)),
        Text(
          "                11:25  -  11:52  น.",
          style: TextStyle(color: Colors.grey, fontSize: 20),
        ),
      ],
    )
    );
  }


  Widget _sevenSec() {
    return Card(

    child: Row(
      children: <Widget>[
        Text("    รอบที่ 7    ",
            style: TextStyle(color: Colors.black, fontSize: 20)),
        Text(
          "                11:55  -  12:22  น.",
          style: TextStyle(color: Colors.grey, fontSize: 20),
        ),
      ],
    )
    );
  }

  Widget _eightSec() {
    return Card(

    child: Row(
      children: <Widget>[
        Text("    รอบที่ 8    ",
            style: TextStyle(color: Colors.black, fontSize: 20)),
        Text(
          "                12:25  -  12:52  น.",
          style: TextStyle(color: Colors.grey, fontSize: 20),
        ),
      ],
    )
    );
  }


Widget _bbSec() {
    return 

     Row(
      children: <Widget>[
        Text("                           พัก                   ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
        
      ],
    );
    
  }




  Widget _nineSec() {
    return Card(

    child: Row(
      children: <Widget>[
        Text("    รอบที่ 9    ",
            style: TextStyle(color: Colors.black, fontSize: 20)),
        Text(
          "                14:15  -  14:42  น.",
          style: TextStyle(color: Colors.grey, fontSize: 20),
        ),
      ],
    )
    );
  }

  Widget _tenSec() {
    return Card(

    child: Row(
      children: <Widget>[
        Text("    รอบที่ 10    ",
            style: TextStyle(color: Colors.black, fontSize: 20)),
        Text(
          "              15:05  -  15:32  น.",
          style: TextStyle(color: Colors.grey, fontSize: 20),
        ),
      ],
    )
    );
  }
  Widget _elevenSec() {
    return Card(

    child: Row(
      children: <Widget>[
        Text("    รอบที่ 11    ",
            style: TextStyle(color: Colors.black, fontSize: 20)),
        Text(
          "              15:55  -  16:22  น.",
          style: TextStyle(color: Colors.grey, fontSize: 20),
        ),
      ],
    )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Text("TRAM"),
        ),
        body: ListView(
          children: <Widget>[
            _pageSec(),
            _aaSec(),
            _oneSec(),
            _twoSec(),
            _threeSec(),
            _fourSec(),
            _fiveSec(),
            _sixSec(),
            _sevenSec(),
            _eightSec(),
            _bbSec(),
            _nineSec(),
            _tenSec(),
            _elevenSec(),
          ],
        ));
  }
}
