import 'package:flutter/material.dart';
import 'widgets.dart';

class ImageFoodA extends StatelessWidget {
  ImageFoodA({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightGreen,
            title: Text("ร้านเฟรนฟรายชีส"),
          ),
          body: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      buildCardListView(
                          "https://pbs.twimg.com/media/C3QbEqbVMAA0l2I.jpg"),
                      // Image.network("https://pbs.twimg.com/media/C3QbEqbVMAA0l2I.jpg"),
                      Text("ร้านเฟรนฟรายชีส",
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
                          "         เฟรนช์ฟรายส์เหลืองทองทอดในน้ำมันร้อนๆ จนกรอบหอมฉุย นำมาคลุกเคล้ากับเรื่องปรุงหลากรสไม่ว่าจะเป็นซาวครีม บาบีคิว พิซซ่า โนริสาหร่าย ราดชีสเข้มข้นหวานมัน พร้อมยืดดดดดดดดดดดสะใจ ดีต่อใจ  รีบไปลอง",
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
                                  " ไซส์ S  29  บาท",
                                style: TextStyle(color: Colors.black, fontSize: 16),
                          ),

                        ],
                      )
                      
                      ),
                      Container(
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "                   ไซส์ M 39  บาท",
                                style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                              ],
                            ),
                          ),
                      Column(
                        children: <Widget>[
                          Container(
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "                   ไซส์ L  49  บาท",
                                    style: TextStyle(color: Colors.black, fontSize: 16),
                              ),
                                  ],
                                ),
                                
                              ),
                        ],
                      )
                      
                        ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
