import 'package:flutter/material.dart';

class ParkingPlace extends StatefulWidget {
  ParkingPlace({Key key, this.title}) : super(key: key);
  final String title;
  _ParkingPlaceState createState() => _ParkingPlaceState();
}

class _ParkingPlaceState extends State<ParkingPlace> {
  Widget _buildCardListView(String imagePath) {
    return Card(
      child: Image.network(imagePath),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[300],
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
                  _buildCardListView(
                      "http://kps.ku.ac.th/v8/images/bg/kps-bus-routes.jpg"),
                ],
              ),
            )
          ],
        ));
  }
}
