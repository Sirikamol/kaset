import 'package:flutter/material.dart';
import 'widgets.dart';

class ImageFoodE extends StatelessWidget {
  ImageFoodE({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightGreen,
            title: Text("ร้านไอติมตาโปน"),
          ),
          body: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      buildCardListView(
                          "https://arch.punpromotion.com/wp-content/uploads/2017/06/S__2523145-1.jpg"),
                      
                      Text("ร้านไอติมตาโปน",
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
                          "            ไม่ว่าจะเด็กหรือผู้ใหญ่ต่างก็ตกหลุมรักการทานไอศกรีมกันทั้งนั้น เพราะนอกจากจะเป็นของหวานที่อร่อย เย็นชื่นใจ คลายร้อนได้ดีแล้ว ยังช่วยให้เราอารมณ์ดีขึ้นได้ด้วย ไอศกรีมมีสีสันน่ารัก น่ารับประทาน แถมรสชาติยังอร่อยสุดๆ อีกด้วย มีทั้งหมด 5 สี แต่ละสีมีรสชาติแตกต่างกันออกไป ไม่ว่าจะเป็น สีม่วงคือรสมันม่วง สีเขียวคือรสชาเขียว สีชมพูคือสตรอว์เบอร์รี สีขาวคือรสวนิลลา สีน้ำตาลคือรสช็อกโกแลต และโคนก็ทำมาจากคุ้กกี้อบเนย นอกจากจะอร่อยฟินแล้ว ถ้าถ่ายรูปคู่ไอศกรีมอวดเพื่อนๆก็เรียกยอดไลค์ได้เพียบแน่นอน",
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
                                  " เริ่มต้นแค่  19  บาท ",
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
