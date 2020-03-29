import 'package:flutter/material.dart';
import 'widgets.dart';

class HistoryPage extends StatelessWidget {
  HistoryPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightGreen,
            title: Text("HISTORY"),
          ),
          body: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      buildCardListView(
                          "https://dok7xy59qfw9h.cloudfront.net/649/297/682/1940003015-1rgp2ke-65mglf4oebr8545/original/_a16.jpg"),
                      Text("ประวัติมหาวิทยาลัยเกษตรศาสตร์",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.lightGreen)),
                      Container(
                          child: Padding(
                        padding: EdgeInsets.all(10.00),
                        child: Text(
                          "   มหาวิทยาลัยเกษตรศาสตร์ วิทยาเขตกำแพงแสน จัดตั้งเป็นวิทยาเขตลำดับที่ 2 ของมหาวิทยาลัยเกษตรศาสตร์ โดยการดำริของ หม่อมหลวงชูชาติ กำภู อธิการบดีในขณะนั้น ได้พิจารณาเห็นว่าพื้นที่ของมหาวิทยาลัยเกษตรศาสตร์ที่บางเขนคับแคบ ไม่สามารถจะขยายงานด้านการศึกษาทางเกษตรให้กว้างขวางเพื่อรับกับภาวะการขยายตัวทางเศรษฐกิจและสังคมของชาติในอนาคตได้ มหาวิทยาลัยจึงจัดทำแผนและโครงการขยายกิจการต่าง ๆ ในด้านสาขาวิชา เกษตรศาสตร์ ไปดำเนินการ ณ สถานที่ที่เหมาะสมแห่งใหม่ ในท้องที่อำเภอกำแพงแสน จังหวัดนครปฐม เมื่อ พ.ศ. 2510 และรัฐบาลเห็นชอบในหลักการโครงการพัฒนามหาวิทยาลัย โดยใช้เงินกู้ธนาคารโลกส่วนหนึ่งและเงินงบประมาณของรัฐบาลสมทบอีกส่วนหนึ่ง โดยธนาคารโลกอนุมัติให้รัฐบาลกู้เงินจำนวน 320.3 ล้านบาท สมทบกับเงินงบประมาณจำนวน269ล้านบาทดำเนินโครงการพัฒนามหาวิทยาลัยเกษตรศาสตร์ วิทยาเขตกำแพงแสน ตั้งแต่วันที่ 22 สิงหาคม 2515 ถึงวันที่ 30 มิถุนายน 2521 และมหาวิทยาลัยเกษตรศาสตร์ วิทยาเขตกำแพงแสนเริ่มจัดการเรียนการสอนครั้งแรก เมื่อวันที่ 12 พฤศจิกายน 2522",
                          style: TextStyle(color: Colors.black, fontSize: 14),
                          textAlign: TextAlign.justify,
                        ),
                      )),
                      Text(
                        "สัญลักษณ์ประจำมหาวิทยาลัย",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.lightGreen),
                      ),
                      Container(
                          child: Padding(
                        padding: EdgeInsets.all(10.00),
                        child: Text(
                          "   ตราประจำมหาวิทยาลัย เป็นรูปวงกลม มีรูปพระพิรุณทรงนาคอยู่กึ่งกลาง ล้อมรอบด้วยกลีบบัวคว่ำและกลีบบัวหงายและมีข้อความว่า มหาวิทยาลัยเกษตรศาสตร์ พ.ศ. ๒๔๘๖ ล้อมรอบเป็นชั้นนอกสุด",
                          style: TextStyle(color: Colors.black, fontSize: 14),
                          textAlign: TextAlign.justify,
                        ),
                      )),
                      Container(
                          child: Padding(
                        padding: EdgeInsets.all(10.00),
                        child: Text(
                          "   สีประจำมหาวิทยาลัย คือ สีเขียวใบไม้ และ ต้นไม้ประจำมหาวิทยาลัย ได้แก่ ต้นนนทรี โดยพระบาทสมเด็จพระเจ้าอยู่หัวทรงปลูกต้นนนทรี จำนวน 9 ต้น ณ บริเวณหน้าหอประชุม มก. เมื่อวันที่ 29 พฤศจิกายน พ.ศ. 2506",
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
