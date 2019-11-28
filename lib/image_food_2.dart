import 'package:flutter/material.dart';
import 'widgets.dart';

class ImageFoodB extends StatelessWidget {
  ImageFoodB({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightGreen,
            title: Text("ร้านบ้านขนมเบื้อง"),
          ),
          body: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      buildCardListView(
                          "https://pbs.twimg.com/media/CmBxHzDWgAAvuGo.jpg"),
                      Text("ร้านบ้านขนมเบื้อง",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.lightGreen)),
                      Container(
                          child: Padding(
                        padding: EdgeInsets.all(10.00),
                        child: Text(
                          "ZONE       A ",
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
                          "            สำหรับใครที่ชื่นชอบทานขนมเบื้อง ต้องห้ามพลาดร้านนี้ เป็นอีกหนึ่งร้านที่อยากแนะนำให้ทุกคนได้ไปลองกันมาก จุดเด่นของร้านนี้ อยู่ตรงที่ตัวแป้งที่กรอบมากๆ ครีมเยิ้มๆ และยังมีไส้ที่หอมหวานละมุนมากๆ แถมไม่หวานมากอีกด้วย ",
                          style: TextStyle(color: Colors.black, fontSize: 14),
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
                            " กล่องละ  30  บาท",
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
