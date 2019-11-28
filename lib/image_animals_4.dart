import 'package:flutter/material.dart';
import 'widgets.dart';

class ImageAnimalsD extends StatelessWidget {
  ImageAnimalsD({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightGreen,
            title: Text("ร้านน้องเหมียว"),
          ),
          body: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      buildCardListView(
                          "http://jjpetonline.com/picture/shop373/shop_373_6020_1.jpg"),
                      Text("ร้านน้องเหมียว",
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
                          "         ร้านนี้ขายแมวสองสายพันธุ์ นั่นก็คือ แมวอเมริกัน ช็อตแฮร์ ที่น่ารัก และเป็นคู่หูที่น่าพอใจ เขาจะผูกพันกับสมาชิกทุกคนในครอบครัว เป็นแมวที่มีพลังมาก ทุกส่วนของร่างกายได้รับการพัฒนามาอย่างดี เขามีอกที่กว้าง คอหนา กรามที่แข็งแรงและปากที่พัฒนารูปลักษณะมาอย่างดี ขาหนาและแข็งแรง เขายังคงมีลักษณะตามวัตถุประสงค์ต้นกำเนิดคือ แมวที่เลี้ยงไว้เพื่อไล่สัตว์จำพวกหนุออกจากฟาร์มหรือบ้านขนของอเมริกัน ช็อตแฮร์หนาและแน่น และจะยิ่งหนาและยาวขึ้นในช่วงหน้าหนาว ลวดลายของชนเกิดขึ้นเพื่อวัตถุประสงค์ในการป้องกันหรืออำพรางตัว " +
                              "ส่วนอีกสายพันธุ์หนึ่งคือ แมวสก็อตติช โฟล์ดเป็นแมวที่อ่อนหวาน ดูแลง่าย สามารถเข้าได้ดีกับสมาชิกทุกคนในครอบครัว ในการจับหางของเขานั้นต้องจับเบาๆ แมวบางตัวอาจเกิดการอักเสบได้หากว่าหางถูกจับแรงเกินไปหรือผิดวิธี",
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
                            " ตกลงกันได้ ",
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
