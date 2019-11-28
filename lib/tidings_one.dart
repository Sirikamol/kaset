import 'package:flutter/material.dart';
import 'widgets.dart';

class TidingsOne extends StatelessWidget {
  TidingsOne({Key key}) : super(key: key);

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
                          "https://www.matichon.co.th/wp-content/uploads/2018/12/60.jpg"),
                      Text(
                          "พระเจ้าวรวงศ์เธอ พระองค์เจ้าโสมสวลี พระวรราชาทินัดามาตุ เสด็จทรงเปิดงาน เกษตรกำแพงแสน",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.lightGreen)),
                      Container(
                          child: Padding(
                        padding: EdgeInsets.all(10.00),
                        child: Text(
                          "           วันที่ 2 ธันวาคม พ.ศ. 2562 พระเจ้าวรวงศ์เธอ พระองค์เจ้าโสมสวลี พระวรราชาทินัดามาตุ เสด็จทรงเปิดงาน เกษตรกำแพงแสน ครั้งที่ 23 ประจำปี 2562  ณ มหาวิทยาลัยเกษตรศาสตร์ วิทยาเขตกำแพงแสน อำเภอกำแพงแสน จังหวัดนครปฐม และทรงเข้าเยี่ยมชมนิทรรศการต่างๆภายในงาน ",
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
