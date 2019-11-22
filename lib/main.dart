import 'package:flutter/material.dart';
import 'widgets.dart';
import 'app_navigate.dart';

void main() => runApp(Launcher());

class Launcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kasetfair App',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: Home(title: 'Kasetfair 2019'),
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
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            headerSection(),
            titleSetion(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        navigateToFoodSearch(context);
                      },
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.all(7.0),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(7.0),
                                      child: Icon(
                                        Icons.restaurant,
                                        color: Colors.black,
                                        size: 50,
                                      ),
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        navigateToAgricultureSearch(context);
                      },
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.all(7.0),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(7.0),
                                      child: Icon(
                                        Icons.local_florist,
                                        color: Colors.black,
                                        size: 50,
                                      ),
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        navigateToAnimalSearch(context);
                      },
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.all(7.0),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(7.0),
                                      child: Icon(
                                        Icons.pets,
                                        color: Colors.black,
                                        size: 50,
                                      ),
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        navigateToGeneralSearch(context);
                      },
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.all(7.0),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(7.0),
                                      child: Icon(
                                        Icons.shopping_basket,
                                        color: Colors.black,
                                        size: 50,
                                      ),
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(margin: EdgeInsets.only(left: 0))
              ],
            ),
            button2Section(),
            finalHeadSection(),
            Card(
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      // print('hello1');
                      navigateToFoodEdit(context);
                    },
                    child: Icon(Icons.arrow_right,
                        color: Colors.lightGreenAccent[700], size: 35),
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("พระเจ้าวรวงศ์เธอ พระองค์เจ้าโสมสวลีฯ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      Text(
                        "วันที่ 2 ธ.ค.ทรงเสด็จเปิดงานเกษตรครั้งที่ 23",
                        style: TextStyle(color: Colors.grey[500], fontSize: 14),
                      ),
                    ],
                  )),
                ],
              ),
            ),
            Card(
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      // print('hello1');
                      navigateToFoodEdit(context);
                    },
                    child: Icon(Icons.arrow_right,
                        color: Colors.lightGreenAccent[700], size: 35),
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("การเกษตร 4.0",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      Text(
                        "ภายในงานมีการโชว์นวัตกรรมทางการเกษตร",
                        style: TextStyle(color: Colors.grey[500], fontSize: 14),
                      ),
                    ],
                  )),
                ],
              ),
            ),
          ],
        ),
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
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: FlatButton.icon(
                            onPressed: () => navigateToMapPage(context),
                            icon: Icon(
                              Icons.location_on,
                              color: Colors.blue,
                              size: 35,
                            ),
                            label: Text("Map",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16))),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: FlatButton.icon(
                            onPressed: () => navigateToArkingPlace(context),
                            icon: Icon(
                              Icons.drive_eta,
                              color: Colors.blue,
                              size: 35,
                            ),
                            label: Text("Parking place",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16))),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: FlatButton.icon(
                            onPressed: () => navigateToHistoryPage(context),
                            icon: Icon(
                              Icons.change_history,
                              color: Colors.blue,
                              size: 35,
                            ),
                            label: Text("History",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16))),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: FlatButton.icon(
                            onPressed: () => navigateToTramPage(context),
                            icon: Icon(
                              Icons.departure_board,
                              color: Colors.blue,
                              size: 35,
                            ),
                            label: Text("Tram",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16))),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: FlatButton.icon(
                            onPressed: () => navigateToWorkTable(context),
                            icon: Icon(
                              Icons.grid_on,
                              color: Colors.blue,
                              size: 35,
                            ),
                            label: Text("Work Table",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16))),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: FlatButton.icon(
                            onPressed: () => navigateToInsertPage(context),
                            icon: Icon(
                              Icons.verified_user,
                              color: Colors.blue,
                              size: 35,
                            ),
                            label: Text("Help",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16))),
                      ),
                    ],
                  ),
                  //Container(margin: EdgeInsets.only(left: 0)),
                ],
              ),
            ),
            Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: FlatButton.icon(
                      onPressed: () => navigateToLoginPage(context),
                      icon: Icon(
                        Icons.supervisor_account,
                        color: Colors.blue,
                        size: 35,
                      ),
                      label: Text("Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16))),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
