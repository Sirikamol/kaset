import 'package:flutter/material.dart';
import 'widgets.dart';

class ImageFoodC extends StatelessWidget {
  ImageFoodC({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightGreen,
            title: Text("ร้านปังปิ่งถ่าน"),
          ),
          body: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      buildCardListView(
                          "https://pbs.twimg.com/media/C3QbEqdUEAAgSfl.jpg"),
                      
                      Text("ร้านปังปิ่งถ่าน",
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
                          "            ขนมปังปิ้งถ่านโบราณ หอมหวาน ได้กลิ่นเตาถ่านเหมือนย้อนกลับไปในยุคโบราณ พร้อมกับไส้ขนมปังเยิ้มๆมีทั้ง ไส้เนย-พริกเผาหมูหยอง ไส้เนย-สังขยา ไส้เนย-แยมสับปะรด ไส้เนย-แยมสตรอว์เบอร์รี ไส้เนย-แยมส้ม ไส้เนย-ช็อกโกแลต ไส้เนย-โอวัลติน ไส้เนย-เนยถั่ว และไส้เนย-นมน้ำตาล",
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
                                  " กล่องละ  25  บาท",
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
