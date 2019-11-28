import 'package:flutter/material.dart';
import 'widgets.dart';

class ImageAgricultureD extends StatelessWidget {
  ImageAgricultureD({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightGreen,
            title: Text("ร้านกนกอินโด"),
          ),
          body: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      buildCardListView(
                          "https://i.ytimg.com/vi/uq5T6u_Towg/maxresdefault.jpg"),
                      Text("ร้านกนกอินโด",
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
                          "         เฟิร์นกนกนารี วงศ์กนกนารี ได้ชื่อสามัญว่า Spike Moss family จัดเป็นญาติของเฟินในกลุ่มที่เรียกว่า lycopods ดูคล้ายเฟินจริง เป็นพืฃที่มีระบบท่อลำเลียง ลักษณะทั่วไป ต้นเลื้อยคลุมดิน มีบ้างที่เป็นเฟินเกาะอาศัย แต่น้อยมาก ขนาดต้นมีตั้งแต่เล็กถึงขนาดกลาง ลำต้น ไม่มีเนื้อไม่ ชูส่วนปลายยอดตั้งขึ้น และมักแตกกิ่งก้านเป็นคู่ๆ แผ่กระจายในระนาบเดียวเป็นส่วนมาก ที่ข้างลำต้นมีรากงอกบริเวณด้านล่าง และราก มีแตกสาขาเป็นคู่ๆ ด้วยเช่นกัน ลักษณะใบ เกล็ดเล็กๆ ดูสวยงาม",
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
                            " ต้นละ   50   บาท",
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
