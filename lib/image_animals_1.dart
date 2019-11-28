import 'package:flutter/material.dart';
import 'widgets.dart';

class ImageAnimalsA extends StatelessWidget {
  ImageAnimalsA({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightGreen,
            title: Text("ร้านThe Siberian"),
          ),
          body: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      buildCardListView(
                          "https://f.ptcdn.info/020/013/000/1386375631-DSC0056JPG-o.jpg"),
                      Text("ร้านThe Siberian",
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
                          "         เป็นสุนัขขนาดกลาง ขนฟูแน่น จัดอยู่ในกลุ่มสุนัขใช้งาน มีต้นกำเนิดทางตะวันออกของไซบีเรีย เพาะพันธุ์มาจากสุนัขในวงศ์สปิตซ์ มีลักษณะขน 2 ชั้นฟูแน่น, หางรูปเคียว, หูเป็นรูปสามเหลี่ยมตั้งชัน และลายที่เป็นลักษณะเฉพาะ ไซบีเรียนฮัสกีเป็นสุนัขที่แข็งแรง คล่องแคล่ว เต็มไปด้วยพลัง และยืดหยุ่น น่ารักน่ากอด",
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
