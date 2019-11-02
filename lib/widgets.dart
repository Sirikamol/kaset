import 'package:flutter/material.dart';

Widget headerSection() {
  return Column(
    children: <Widget>[
      Container(
        height: 270,
        width: 370,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            buildCardListView(
                "https://s.isanook.com/tr/0/ud/280/1402313/1.jpg"),
            buildCardListView(
                "https://kps.ku.ac.th/kasetfair/images/home_slide/BN-500x333.jpg"),
            buildCardListView(
                "https://f.ptcdn.info/252/061/000/pj9cj9fnl3S4dxTFtrU-o.jpg"),
            buildCardListView(
                "https://www.nanagarden.com/picture/Forum/For9059_1.jpg"),
          ],
        ),
      )
    ],
  );
}

Widget titleSetion() {
  return Padding(
    padding: EdgeInsets.all(20),
    child: Row(
      children: <Widget>[
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("KASETFAIR",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
            Text(
              "Kamphaeng Saen",
              style: TextStyle(color: Colors.grey[500], fontSize: 22),
            )
          ],
        )),
        //Icon(Icons.drive_eta, color: Colors.grey),
        Container(margin: EdgeInsets.only(left: 7))
      ],
    ),
  );
}

Widget buildButtonColumn({IconData icon, String label}) {
  return Column(
    children: <Widget>[
      Icon(
        icon,
        color: Colors.blue.shade500,
        size: 40,
      ),
      Container(
        margin: EdgeInsets.only(top: 8),
        child: Text(label,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 13,
                color: Colors.blue.shade500)),
      ),
    ],
  );
}

Widget button2Section() {
  return Padding(padding: EdgeInsets.all(10));
}

Widget finalHeadSection() {
  return Container(
    child: Text(
      'ข่าวสาร ',
      style: TextStyle(fontSize: 20, color: Colors.white),
    ),
    color: Colors.lightGreen[600],
    height: 40,
  );
}

Widget newsSection() {
  return ListView.builder(
    itemCount: 5,
    itemBuilder: (context, pos) {
      return Padding(
          padding: EdgeInsets.only(bottom: 16.0),
          child: Card(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
              child: Text(
                'hi',
                style: TextStyle(
                  fontSize: 18.0,
                  height: 1.6,
                ),
              ),
            ),
          ));
    },
  );
}

Widget finalSection(String text1, String text2) {
  return Padding(
    padding: EdgeInsets.all(20),
    child: Row(
      children: <Widget>[
        Icon(Icons.arrow_right, color: Colors.lightGreenAccent[700], size: 35),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(text1,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text(
              text2,
              style: TextStyle(color: Colors.grey[500], fontSize: 14),
            ),
          ],
        )),
      ],
    ),
  );
}

Widget buildCardListView(String imagePath) {
  return Card(
    child: Image.network(imagePath),
  );
}
