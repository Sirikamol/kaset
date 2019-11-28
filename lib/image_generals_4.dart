import 'package:flutter/material.dart';
import 'widgets.dart';

class ImageGeneralsD extends StatelessWidget {
  ImageGeneralsD({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightGreen,
            title: Text("ร้านศูนย์หนังสือ"),
          ),
          body: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      buildCardListView(
                          "https://aboutmom.co/wp-content/uploads/2019/04/nanmeebooks_9-500x500.jpg"),
                      Text("ร้านศูนย์หนังสือ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.lightGreen)),
                      Container(
                          child: Padding(
                        padding: EdgeInsets.all(10.00),
                        child: Text(
                          "ZONE       D ",
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
                          "            เป็นร้านจำหน่ายหนังสือระเภทต่างๆ หลากหลายไม่ว่าจะเป็น แนวความรู้ นิยาย การ์ตูน ธรรมมะ และอีกมากมาย ในร้านศุนย์หนังสือนี้ยังมีหนังสือที่นำมาลดราคาเฉพาะงานเกษตแฟร์ เท่านั้นอีกด้วย ต้องรีบไปตำกันแล้ว",
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
                            " เริ่มต้นแค่  29  บาท ",
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
