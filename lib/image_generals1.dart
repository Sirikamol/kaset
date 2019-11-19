import 'package:flutter/material.dart';
import 'widgets.dart';

class ImageGeneralsA extends StatelessWidget {
  ImageGeneralsA({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightGreen,
            title: Text("ร้านStar101"),
          ),
          body: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      buildCardListView(
                          "https://miro.medium.com/max/4000/1*-0GnyjiGWUG1PhQiR7_kIg.jpeg"),
                      
                      Text("ร้านStar101",
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
                          "            สาวกเกาหลีห้ามพลาด ร้านนี้เป็นร้านเสื้อผ้าสไตล์เกาหลี สีหวานๆ พาสเทล ชิคๆ มีทั้งทรงผู้ชายและทรงผู้หญิงกันเลยทีเดียว แถมยังมีราคาที่เบาๆ สบายกระเป๋าอีกด้วย ",
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
                                  " เริ่มต้นแค่  150  บาท ",
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
