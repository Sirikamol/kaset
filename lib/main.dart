import 'package:flutter/material.dart';
import 'package:kasetsart/parking_place.dart';
import 'package:kasetsart/historyPage.dart';
import 'package:kasetsart/insertPage.dart';
import 'package:kasetsart/loginPage.dart';
import 'package:kasetsart/secondPage.dart';
import 'package:kasetsart/foodPage.dart';
import 'package:kasetsart/mapPage.dart';
import 'package:kasetsart/tramPage.dart';
import 'package:kasetsart/workTable.dart';
import 'inputPage.dart';

void main() => runApp(Launcher());

class Launcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kasetfair App',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: Home(title: 'Homepage'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kasetfair App'),
      ),
      body: ListView(
        children: <Widget>[
          headerSection,
          titleSetion,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                children: <Widget>[
                  FlatButton.icon(
                      onPressed: () => navigateToFoodPage(context),
                      icon: Icon(
                        Icons.restaurant,
                        color: Colors.black,
                        size: 50,
                      ),
                      label: Text("",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 2))),
                  FlatButton.icon(
                      onPressed: () => navigateToInputPage(context),
                      icon: Icon(
                        Icons.local_florist,
                        color: Colors.black,
                        size: 50,
                      ),
                      label: Text("",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 2))),
                  FlatButton.icon(
                      onPressed: () => navigateToSecondPage(context),
                      icon: Icon(
                        Icons.pets,
                        color: Colors.black,
                        size: 50,
                      ),
                      label: Text("",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 2))),
                  FlatButton.icon(
                      onPressed: () => navigateToSecondPage(context),
                      icon: Icon(
                        Icons.shopping_basket,
                        color: Colors.black,
                        size: 50,
                      ),
                      label: Text("",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12))),
                ],
              ),
              Container(margin: EdgeInsets.only(left: 0))
            ],
          ),
          button2Section,
          finalSection,
          final2Section,
          final3Section,
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Icon(Icons.spa, color: Colors.black, size: 35),
            DrawerHeader(
                child: Text('KASETSART',
                    style: TextStyle(fontSize: 22, color: Colors.black))),
            Icon(
              Icons.arrow_drop_down_circle,
              color: Colors.black,
              size: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    FlatButton.icon(
                        onPressed: () => navigateToMapPage(context),
                        icon: Icon(
                          Icons.location_on,
                          color: Colors.blue,
                          size: 35,
                        ),
                        label: Text("map",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16))),
                    FlatButton.icon(
                        onPressed: () => navigateToArkingPlace(context),
                        icon: Icon(
                          Icons.drive_eta,
                          color: Colors.blue,
                          size: 35,
                        ),
                        label: Text("arking place",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16))),
                    FlatButton.icon(
                        onPressed: () => navigateToHistoryPage(context),
                        icon: Icon(
                          Icons.change_history,
                          color: Colors.blue,
                          size: 35,
                        ),
                        label: Text("history",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16))),
                    FlatButton.icon(
                        onPressed: () => navigateToTramPage(context),
                        icon: Icon(
                          Icons.departure_board,
                          color: Colors.blue,
                          size: 35,
                        ),
                        label: Text("tram",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16))),
                    FlatButton.icon(
                        onPressed: () => navigateToWorkTable(context),
                        icon: Icon(
                          Icons.grid_on,
                          color: Colors.blue,
                          size: 35,
                        ),
                        label: Text("work table",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16))),
                    FlatButton.icon(
                        onPressed: () => navigateToInsertPage(context),
                        icon: Icon(
                          Icons.verified_user,
                          color: Colors.blue,
                          size: 35,
                        ),
                        label: Text("Help",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16))),
                  ],
                ),
                //Container(margin: EdgeInsets.only(left: 0)),
              ],
            ),
            // ListTile(title: Text('ช่วยเหลือ',style: TextStyle(fontSize: 20,color: Colors.black)),),
            Column(
              children: <Widget>[
                FlatButton.icon(
                    onPressed: () => navigateToLoginPage(context),
                    icon: Icon(
                      Icons.supervisor_account,
                      color: Colors.blue,
                      size: 35,
                    ),
                    label: Text("Login",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16))),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget headerSection = Column(
  children: <Widget>[
    Container(
      height: 270,
      width: 370,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _buildCardListView1(),
          // _buildCardListView2(),
          _buildCardListView3(),
          _buildCardListView4(),
        ],
      ),
    )
  ],
);

Card _buildCardListView1() {
  return Card(
    child: Image.network("https://s.isanook.com/tr/0/ud/280/1402313/1.jpg"),
  );
}

Card _buildCardListView2() {
  return Card(
    child: Image.network(
        "https://kps.ku.ac.th/kasetfair/images/home_slide/BN-500x333.jpg"),
  );
}

Card _buildCardListView3() {
  return Card(
    child: Image.network(
        "https://f.ptcdn.info/252/061/000/pj9cj9fnl3S4dxTFtrU-o.jpg"),
  );
}

Card _buildCardListView4() {
  return Card(
    child:
        Image.network("https://www.nanagarden.com/picture/Forum/For9059_1.jpg"),
  );
}

Widget titleSetion = Padding(
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

Column _buildButtonColumn({IconData icon, String label}) {
  var icColor = Colors.blue.shade500;
  return Column(
    children: <Widget>[
      Icon(
        icon,
        color: icColor,
        size: 40,
      ),
      Container(
        margin: EdgeInsets.only(top: 8),
        child: Text(label,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 13, color: icColor)),
      ),
    ],
  );
}

Widget button2Section = Padding(padding: EdgeInsets.all(10));

Widget finalSection = Container(
  child: Text(
    '   ข่าวสาร ',
    style: TextStyle(fontSize: 20, color: Colors.white),
  ),
  color: Colors.lightGreen[600],
  height: 40,
);

Widget final2Section = Padding(
  padding: EdgeInsets.all(20),
  child: Row(
    children: <Widget>[
      Icon(Icons.arrow_right, color: Colors.lightGreenAccent[700], size: 35),
      Expanded(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("พระเจ้าวรวงศ์เธอ พระองค์เจ้าโสมสวลีฯ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          Text(
            "วันที่ 2 ธ.ค.ทรงเสด็จเปิดงานเกษตรครั้งที่ 23",
            style: TextStyle(color: Colors.grey[500], fontSize: 14),
          ),
        ],
      )),
    ],
  ),
);

Widget final3Section = Padding(
  padding: EdgeInsets.all(20),
  child: Row(
    children: <Widget>[
      Icon(Icons.arrow_right, color: Colors.lightGreenAccent[700], size: 35),
      Expanded(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("การเกษตร 4.0",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          Text(
            "ภายในงานมีการโชว์นวัตกรรมทางการเกษตร",
            style: TextStyle(color: Colors.grey[500], fontSize: 14),
          ),
        ],
      )),
    ],
  ),
);

navigateToSecondPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return MySecondPage();
  }));
}

navigateToInputPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return InputPage();
  }));
}

navigateToFoodPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return FoodPage();
  }));
}

navigateToMapPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return MapPage();
  }));
}

navigateToArkingPlace(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return ParkingPlace();
  }));
}

navigateToHistoryPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return HistoryPage();
  }));
}

navigateToTramPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return TramPage();
  }));
}

navigateToWorkTable(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return WorkTable();
  }));
}

navigateToLoginPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return LoginPage();
  }));
}

navigateToInsertPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return InsertPage();
  }));
}
