import 'package:flutter/material.dart';

Widget headerSection() {
  return Column(
    children: <Widget>[
      Container(
        height: 270,
        width: 370,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            buildCardListView(
                "https://scontent.fbkk5-8.fna.fbcdn.net/v/t1.0-0/p640x640/74271532_3180907388618548_2552361427490832384_o.jpg?_nc_cat=106&_nc_oc=AQkH6ljGCEu8cCK8TnU2Sl9_ucasmfKu4XAgf9Pju8rAk7AQPxhy8fZ0zK0wiBmIX5I&_nc_ht=scontent.fbkk5-8.fna&oh=dcf0bd058c4d1d0f5ff316fddc8eaddc&oe=5E4528CC"),
                
            buildCardListView(
                "http://pasusart.com/wp-content/uploads/2019/10/C3CF0358-F6E1-4CD2-ABBF-FEB0BAA51552.jpeg"),
            // buildCardListView(
            //     "http://pasusart.com/wp-content/uploads/2019/10/%E0%B8%87%E0%B8%B2%E0%B8%99%E0%B9%80%E0%B8%81%E0%B8%A9%E0%B8%95%E0%B8%A3-62.jpg"),
            // buildCardListView(
            //     "https://scontent.fbkk5-5.fna.fbcdn.net/v/t1.0-0/p640x640/73381268_3180908611951759_4004653813465088000_o.jpg?_nc_cat=104&_nc_oc=AQmfLy_TKAjOP-NLg33ymmgSqvl59CqS3FMBQ9FMdICcUkwzDl3zcQGGDSD7NYE6pzE&_nc_ht=scontent.fbkk5-5.fna&oh=0d3f66c7eb7b5ad7e26c492932477daf&oe=5E4F500E"),
          ],
        ),
      )
    ],
  );
}

Widget titleSetion() {
  return Padding(
    padding: EdgeInsets.all(20),
    child: Row(
      children: <Widget>[
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("KASETFAIR",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
            Text(
              "Kamphaeng Saen",
              style: TextStyle(color: Colors.grey[500], fontSize: 22),
            )
          ],
        )),
        //Icon(Icons.drive_eta, color: Colors.grey),
        Container(margin: EdgeInsets.only(left: 7))
      ],
    ),
  );
}

Widget buildButtonColumn({IconData icon, String label}) {
  return Column(
    children: <Widget>[
      Icon(
        icon,
        color: Colors.blue.shade500,
        size: 40,
      ),
      Container(
        margin: EdgeInsets.only(top: 8),
        child: Text(label,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 13,
                color: Colors.blue.shade500)),
      ),
    ],
  );
}

Widget button2Section() {
  return Padding(padding: EdgeInsets.all(10));
}

Widget finalHeadSection() {
  return Container(
    alignment: Alignment.topLeft,
    child: Text(
      'ข่าวสาร ',
      style: TextStyle(fontSize: 20, color: Colors.white),
    ),
    color: Colors.lightGreen[600],
    
    height: 40,
  );
}

Widget newsSection() {
  return ListView.builder(
    itemCount: 5,
    itemBuilder: (context, pos) {
      return Padding(
          padding: EdgeInsets.only(bottom: 16.0),
          child: Card(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
              child: Text(
                'hi',
                style: TextStyle(
                  fontSize: 18.0,
                  height: 1.6,
                ),
              ),
            ),
          ));
    },
  );
}

// Widget finalSection(String text1, String text2) {
//   return  Card(

//   child: Padding(
//     padding: EdgeInsets.all(20),
    
//     child: Row(

//       children: <Widget>[
//         Icon(Icons.arrow_right, color: Colors.lightGreenAccent[700], size: 35),
//         Expanded(
//             child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(text1,
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
//             Text(
//               text2,
//               style: TextStyle(color: Colors.grey[500], fontSize: 14),
//             ),
//           ],
//         )),
//       ],
//     ),
//   ),);
// }

Widget buildCardListView(String imagePath) {
  return Card(
    child: Image.network(imagePath),
  );
}


