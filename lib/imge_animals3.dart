import 'package:flutter/material.dart';
import 'widgets.dart';

class ImageAnimalsC extends StatelessWidget {
  ImageAnimalsC({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightGreen,
            title: Text("ร้านบางแก้ว"),
          ),
          body: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      buildCardListView(
                          "http://images.voicetv.co.th/media/640/0/storage0/1020294.jpg"),
                      // Image.network("https://pbs.twimg.com/media/C3QbEqbVMAA0l2I.jpg"),
                      Text("ร้านบางแก้ว",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.lightGreen)),
                      Container(
                          child: Padding(
                        padding: EdgeInsets.all(10.00),
                        child: Text(
                          "ZONE       B ",
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
                          "         จากชื่อร้าน ก็น่าจะรู้แล้วว่าร้านนี้ขายสุนัขพันธุ์บางแก้ว สุนัขพันธุ์นี้เป็นสุนัขที่น่าเอ็นดู ยังเป็นสายพันธุ์ที่ขึ้นชื่อเรื่องของความซื่อสัตย์ ที่สำคัญยังรักเจ้านายของตัวเองมาก ๆ หากไม่ใช่คนรู้จักหรือสนิทสนมแบบเจ้าของ อาจจะมองว่าสุนัขสายพันธุ์นี้ดูเริด เชิด หยิ่ง และดุมากแน่ ๆ ลองรับไปเลี้ยงสักตัวจะรู้ว่าน่ารักขนาดไหน",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          textAlign: TextAlign.justify,
                        ),
                      )),
                      Container(
                          child: Row(
                            children: <Widget>[
                              Text(" ราคา       ",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                              Text(
                                  " ตกลงกันได้ ",
                                style: TextStyle(color: Colors.black, fontSize: 16),
                          ),

                        ],
                      )
                      ),
                        ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
