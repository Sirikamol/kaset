import 'package:flutter/material.dart';
import 'widgets.dart';

class ImageAgricultureC extends StatelessWidget {
  ImageAgricultureC({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightGreen,
            title: Text("โซนทานตะวัน"),
          ),
          body: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      buildCardListView(
                          "https://i.ytimg.com/vi/uq5T6u_Towg/maxresdefault.jpg"),
                      Text("โซนทานตะวันมหาวิทยาลัย",
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
                        "รายละเอียด",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.lightGreen),
                      ),
                      Container(
                          child: Padding(
                        padding: EdgeInsets.all(10.00),
                        child: Text(
                          "         โซนต้นทานตะวัน ซึ่งเป็นการจัดทำขึ้นของนิสิตมหาวิทยาลัยเกษตรศาสตร์ วิทยาเขตกำแพงแสน เป็นสถานที่ถ่ายรูปชิคๆ เหมาะสำหรับทุกเพศทุกวัย มางานเกษตรแฟร์ นอกจากเราได้จะได้ซื้อของกินอร่อยๆ ต้นไม้สวยๆ สัตว์น่ารักๆ และของใช้ทั่วไป ยังเป็นเหมือนที่เที่ยวสวยๆที่หนึ่งเลย",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          textAlign: TextAlign.justify,
                        ),
                      )),
                      Container(
                          child: Row(
                        children: <Widget>[
                          Text(" เข้า       ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                          Text(
                            " ฟรี",
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
