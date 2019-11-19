import 'package:flutter/material.dart';
import 'widgets.dart';

class ImageGeneralsC extends StatelessWidget {
  ImageGeneralsC({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightGreen,
            title: Text("ร้านนิยมยีนส์"),
          ),
          body: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      buildCardListView(
                          "https://arch.punpromotion.com/wp-content/uploads/2018/03/29542170_1706983906004622_2199627233934483432_n.jpg"),
                      
                      Text("ร้านนิยมยีนส์",
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
                          "            นิยมยีนส์ Street Fashion Brands ที่มาแรงที่สุดในตอนนี้ การันตีด้วยยอดกว่า 300 สาขา ในระยะเวลาเปิดตัวเพียง 1ปี ครึ่ง กางเกงคุณภาพที่ได้ใส่ก็สวย ด้วยสไตน์การจัดร้านที่เกร๋ เด่นจนลูกค้าต้องเหลียวมอง และก้าวเข้ามาช๊อป",
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
                                  " เริ่มต้นแค่  300  บาท ",
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
