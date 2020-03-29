import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../components/widgets.dart';

class AgriculturePage extends StatelessWidget {
  AgriculturePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightGreen,
            title: Text("ร้านนานาแคคตัส"),
          ),
          body: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      buildCardListView(
                          "http://www.clicksii.com/photostock/wp-content/uploads/2018/06/cactus-4-560x420.jpg"),
                      Text("ร้านนานาแคคตัส",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.lightGreen)),
                      Container(
                          child: Padding(
                        padding: EdgeInsets.all(10.00),
                        child: Text(
                          "ZONE       C ",
                          style: TextStyle(color: Colors.black, fontSize: 14),
                          textAlign: TextAlign.justify,
                        ),
                      )),
                      Text(
                        "รายละเอียดสินค้า",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.lightGreen),
                      ),
                      Container(
                          child: Padding(
                        padding: EdgeInsets.all(10.00),
                        child: Text(
                          "         ผู้คลั่งไคล้ไม้หนามทั้งหลาย ถ้าได้แวะมาเยือนต้องร้องกรี๊ดอย่างแน่นอน เพราะมีหลากหลายสายพันธุ์ สวยงามแปลกตาให้เลือกมากมาย จะเรียกว่าเป็นเหมือนตลาดขายเคคตัสและไม้อวบน้ำขนาดใหญ่เลยทีเดียว ที่สำคัญจำหน่ายในราคาไม่แพง ",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          textAlign: TextAlign.justify,
                        ),
                      )),
                      Container(
                          child: Row(
                        children: <Widget>[
                          Text(" ราคา       ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                          Text(
                            " เริ่มต้น  20  บาท",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ],
                      )),
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
