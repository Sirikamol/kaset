import 'package:flutter/material.dart';
import 'widgets.dart';

class ImageFoodD extends StatelessWidget {
  ImageFoodD({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightGreen,
            title: Text("ร้านดับเบิลเบอร์เกอร์"),
          ),
          body: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      buildCardListView(
                          "https://www.chillpainai.com/src/wewakeup/scoop/img_scoop/scoop/kang/fabuary2017/kasetfair/IMG_2468.jpg"),
                      
                      Text("ร้านดับเบิลเบอร์เกอร์",
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
                          "            เอาใจคนรักแฮมเบอร์เกอร์กันจุก ๆ ไปเลย ไม่ว่าจะเป็นเบอร์เกอร์หมู เบอร์เกอร์ไก่ เบอร์เกอร์ปลา เบอร์เกอร์เนื้อ ชิ้นโตๆ แป้งนุ่ม เนื้อ Burger ฉ่ำกำลังดีและชิ้นใหญ่ มีจุดเด่นที่ความมันของอะโวคาโดและความเผ็ดเล็ก ๆ ของพริก เข้ากับซอสและเนื้อได้เป็นอย่างดี ",
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
                                  " ชิ้นละ  99  บาท (ทุกเนื้อ)",
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
