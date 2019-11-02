import 'package:flutter/material.dart';
import 'widgets.dart';

class ParkingPlace extends StatefulWidget {
  ParkingPlace({Key key, this.title}) : super(key: key);
  final String title;
  _ParkingPlaceState createState() => _ParkingPlaceState();
}

class _ParkingPlaceState extends State<ParkingPlace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Text("PARKING PLACE"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: 250,
              width: 2000,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  buildCardListView(
                      "http://kps.ku.ac.th/v8/images/bg/kps-bus-routes.jpg"),
                ],
              ),
            )
          ],
        ));
  }
}
