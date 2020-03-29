import 'package:flutter/material.dart';
import 'widgets.dart';

class TidingsTwo extends StatelessWidget {
  TidingsTwo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightGreen,
            title: Text("ข่าวสาร"),
          ),
          body: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      buildCardListView(
                          "https://www.salika.co/wp-content/uploads/2018/05/CP_Difital_Agriculture-2018.jpg"),
                      Text(
                          "มกอช. พร้อมด้วยกรรมการสมาพันธ์ SME ไทยส่วนภูมิภาค ร่วมกันผลักดัน ยุทธศาสตร์พระพิรุณ (Agriculture 4.0) เพื่อยกระดับเกษตรแปรรูปเกษตรอินทรีย์",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.lightGreen)),
                      Container(
                          child: Padding(
                        padding: EdgeInsets.all(10.00),
                        child: Text(
                          "           นายกฤษเปิดเผยถึงการยกระดับตลาดเกษตร 4.0 ยุทธศาสตร์พระพิรุณ ตามนโยบายตลาดนำการผลิตของนายกฤษฏา บุญราช รมว.เกษตรและสหกรณ์  ซึ่งยุทธศาสตร์พระพิรุณ  เป็นแผนยุทธศาสตร์และโครงการเชิงกลยุทธ์ เพื่อจัดสรรพื้นที่ตลาด Free Digital Market และพัฒนาตลาดสินค้าเกษตรในลักษณะ Digital Economy การพัฒนาสินค้าเกษตรสู่มาตรฐานโดยไม่แทรกแซงกลไกราคา  แต่สร้างความสามารถในการแข่งขันและการเข้าถึงช่องทางการตลาดในทันทีของเกษตรกร กลุ่มเกษตรกร สหกรณ์ วิสาหกิจชุมชน ตลอดจน SME ที่เกี่ยวข้องใน ภาคเกษตรและอุตสาหกรรมต่อเนื่อง ผ่านเครื่องมือต่างๆ อาทิ ดิจิทัลแฟลตฟอร์ม หรือระบบ E-Matching Market และแฟลตฟอร์มกายภาพ หรือ ระบบร้านค้าปลีก ฟรีแฟรนไชส์ และระบบคำสั่งล้งเกษตรสุขใจ เพื่อนำไปสู่ Digital Thailand 4.0",
                          style: TextStyle(color: Colors.black, fontSize: 14),
                          textAlign: TextAlign.justify,
                        ),
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
