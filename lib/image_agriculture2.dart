import 'package:flutter/material.dart';
import 'widgets.dart';

class ImageAgricultureB extends StatelessWidget {
  ImageAgricultureB({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightGreen,
            title: Text("ร้านไม้นางฟ้า"),
          ),
          body: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      buildCardListView(
                          "https://i.ytimg.com/vi/uq5T6u_Towg/maxresdefault.jpg"),
                      // Image.network("https://pbs.twimg.com/media/C3QbEqbVMAA0l2I.jpg"),
                      Text("ร้านไม้นางฟ้า",
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
                          "         มีหลากหลายชนิดให้คุณเลือกสรรไปจนถึงไม้ดอก ไม้ประดับ ไม่ว่าจะเป็นต้นกุหลาบ ต้นบานไม่รู้โรย ต้นชวนชม ต้นบานชื่น และอีกมากมาย สามารถนำมาประดับโต๊ะได้ รวมไปถึงเฟอร์นิเจอร์แต่งสวน วัสดุจัดสวนต่างๆ",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          textAlign: TextAlign.justify,
                        ),
                      )),
                      Container(
                          child: Row(
                            children: <Widget>[
                              Text(" ราคา      ",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                              Text(
                                  " ต้นละ  99  บาท",
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
