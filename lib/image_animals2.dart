import 'package:flutter/material.dart';
import 'widgets.dart';

class ImageAnimalsB extends StatelessWidget {
  ImageAnimalsB({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightGreen,
            title: Text("ร้านออแกน"),
          ),
          body: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      buildCardListView(
                          "http://chailaibackpacker.com/wp-content/uploads/2017/01/Page1.jpg"),
                      // Image.network("https://pbs.twimg.com/media/C3QbEqbVMAA0l2I.jpg"),
                      Text("ร้านออแกน",
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
                          "         ร้านนี้เป็นร้านขนาดใหญ่ ขายสุนัข พันธุ์บีเกิล ไซบีเรียน ขายหนูแฮมเตอร์ ขายกระต่าย อีกทั้งยังมีให้นมแพะอีกด้วย ถือว่าเป็นร้านที่ครบครันจริงๆ มาร้านเดียวได้ชมได้ซื้อสัตว์น่ารักๆ มากมาย ร้านนี้สามารถถ่ายรูปกับสัตว์ได้อีกด้วย",
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
