import 'package:flutter/material.dart';
import 'package:kasetsart/app_navigate.dart';
import 'widgets.dart';

class MapPage extends StatefulWidget {
  MapPage({Key key, this.title}) : super(key: key);
  final String title;
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  Widget _oneSec() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 400,
          width: 1700,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              buildCardListView(
                  "http://cdn.gotoknow.org/assets/media/files/000/649/246/large_9KU9.jpg?1290609025"),
            ],
          ),
        )
      ],
    );
  }

  Widget _twoSec() {
    return Card(
      color: Colors.yellow[100],
      child: Column(
        children: <Widget>[
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("                Zone A        ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              Text("=       ของกิน",
                  style: TextStyle(color: Colors.black, fontSize: 18)),
            ],
          ),
          Text("  ", style: TextStyle(color: Colors.black, fontSize: 18)),
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("                Zone B        ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              Text("=       สัตว์",
                  style: TextStyle(color: Colors.black, fontSize: 18)),
            ],
          ),
          Text("  ", style: TextStyle(color: Colors.black, fontSize: 18)),
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("                Zone C        ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              Text("=       เกษตร",
                  style: TextStyle(color: Colors.black, fontSize: 18)),
            ],
          ),
          Text("  ", style: TextStyle(color: Colors.black, fontSize: 18)),
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("                Zone D        ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              Text("=       ของใช้ทั่วไป",
                  style: TextStyle(color: Colors.black, fontSize: 18)),
            ],
          ),
          Text("  ", style: TextStyle(color: Colors.black, fontSize: 18)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("map"),
      ),
      body: ListView(
        children: <Widget>[
          _oneSec(),
          _twoSec(),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //     onPressed: () => navigateToFoodSearch(context),
      //     child: Icon(Icons.add),
      //     backgroundColor: Colors.lightGreen,
      //   )
    );
  }
}
