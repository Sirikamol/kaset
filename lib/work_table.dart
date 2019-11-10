import 'package:flutter/material.dart';
import 'widgets.dart';

class WorkTable extends StatefulWidget {
  WorkTable({Key key, this.title}) : super(key: key);
  final String title;
  _WorkTableState createState() => _WorkTableState();
}

class _WorkTableState extends State<WorkTable> {
  Widget _oneSec() {
    return Column(
      children: <Widget>[
        Container(
          height: 250,
          width: 1500,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              buildCardListView(
                  "https://dok7xy59qfw9h.cloudfront.net/649/297/682/1940003015-1rgp2ke-65mglf4oebr8545/original/_a16.jpg")
            ],
          ),
        )
      ],
    );
  }

  Widget _twoSec() {
    return  Card(

    child: Column(
      children: <Widget>[
        Text("ประวัติมหาวิทยาลัยเกษตรศาสตร์",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
        Text(
          "มหาวิทยาลัยเกษตรศาสตร์ วิทยาเขตกำแพงแสน จัดตั้งเป็นวิทยาเขตลำดับที่ 2 ของมหาวิทยาลัยเกษตรศาสตร์ โดยการดำริของ หม่อมหลวงชูชาติ กำภู อธิการบดีในขณะนั้นได้พิจารณาเห็นว่าพื้นที่ของมหาวิทยาลัยเกษตรศาสตร์ที่บางเขนคับแคบ ไม่สามารถจะขยายงานด้านการศึกษาทางเกษตรให้กว้างขวางเพื่อรับกับภาวะการขยายตัวทางเศรษฐกิจและสังคมของชาติในอนาคตได้[2] มหาวิทยาลัยจึงจัดทำแผนและโครงการขยายกิจการต่าง ๆ ในด้านสาขาวิชา เกษตรศาสตร์ ไปดำเนินการ ณ สถานที่ที่เหมาะสมแห่งใหม่ ในท้องที่อำเภอกำแพงแสน จังหวัดนครปฐม เมื่อ พ.ศ. 2510 และรัฐบาลเห็นชอบในหลักการโครงการพัฒนามหาวิทยาลัย โดยใช้เงินกู้ธนาคารโลกส่วนหนึ่งและเงินงบประมาณของรัฐบาลสมทบอีกส่วนหนึ่ง โดยธนาคารโลกอนุมัติให้รัฐบาลกู้เงินจำนวน 320.3 ล้านบาท สมทบกับเงินงบประมาณจำนวน 269 ล้านบาท ดำเนินโครงการพัฒนามหาวิทยาลัยเกษตรศาสตร์ วิทยาเขตกำแพงแสน ตั้งแต่วันที่ 22 สิงหาคม 2515 ถึงวันที่ 30 มิถุนายน 2521 และมหาวิทยาลัยเกษตรศาสตร์ วิทยาเขตกำแพงแสนเริ่มจัดการเรียนการสอนครั้งแรก เมื่อวันที่ 12 พฤศจิกายน 2522",
          style: TextStyle(color: Colors.grey[500], fontSize: 20),
        ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Text("WorkTable"),
        ),
        body: ListView(
          children: <Widget>[
            _oneSec(),
            _twoSec(),
            
          ],
        ));
  }
}
