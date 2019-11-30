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
            buildCardListView(
                "https://www.nanagarden.com/picture/Forum/For9059_1.jpg"),
            Text("บริเวณจอดรถงานเกษตรกำแพงแสน",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.lightGreen)),
            Container(
                child: Padding(
              padding: EdgeInsets.all(10.00),
              child: Text(
                "  บริเวณที่จอดรถมี 7 โซน  โดยโซนแรก P1 จะอยู่ในส่วนบริเวณที่กว้างที่จัดตลาดัดยูคาลิปตัส  โซน P2 จะอยู่อีกฝั่งของโซนแรก ซึ่งจะมีถนนเข้ามหาวิทยาลัยกั้นกลางฝั่งยิม  โซน P3 จะอยู่บริเวณตึกคอนเวณชั่น และโซน P4จะอยู่ตรงข้าม  โซน P5 จะอยู่ฝั่งสหกรณ์ใหญ่ P6 อยู่ฝั่งคาวบอยแลนด์",
                style: TextStyle(color: Colors.black, fontSize: 14),
                textAlign: TextAlign.justify,
              ),
            )),
          ],
        ));
  }
}
