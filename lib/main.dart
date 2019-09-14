import 'package:flutter/material.dart';
import 'package:kasetsart/secondPage.dart';

import 'inputPage.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kasetfair App',
      theme: ThemeData(///
      ),
      home: Home(title: 'Homepage'),
      //actions: <Widget>[
      //IconButton(
      //icon: Icon(Icons.search),
      // tooltip: 'Search',
      //onPressed: null,),],backgroundColor: Colors.lightGreen,

      //      body: ListView(children: <Widget>[headerSection,titleSetion,final2Section,
      //FlatButton(color: Colors.red[300],child: Text("Go to Second page",style: TextStyle(color: Colors.white)),onPressed: () => navigateToSecondPage(context)),]),
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
        title: Text('Kasetfair App'),),
      body: ListView(
        children: <Widget>[
          headerSection,
          titleSetion,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(children: <Widget>[
                FlatButton.icon(
                    onPressed: () => navigateToInputPage(context),
                    icon: Icon(Icons.search,color: Colors.blue,size: 40,),
                    label: Text("search",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))),
                FlatButton.icon(
                    onPressed: () => navigateToSecondPage(context),
                    icon: Icon(Icons.grid_on,color: Colors.blue,size: 35,),
                    label: Text("schedule",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))),
                FlatButton.icon(
                    onPressed: () => navigateToSecondPage(context),
                    icon: Icon(Icons.comment,color: Colors.blue,size: 35,),
                    label: Text("comment",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))),],),
              Container(margin: EdgeInsets.only(left: 0))],),
          button2Section,
          finalSection,
          final2Section,
          final3Section,],),

      drawer: Drawer(
        child: ListView(
          children: <Widget>[ Icon(Icons.spa, color: Colors.black, size: 35),
            DrawerHeader(child: Text('เกี่ยวกับ..',style: TextStyle(fontSize: 22,color: Colors.black) )),
            Icon(Icons.arrow_drop_down_circle, color: Colors.black, size: 30,),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(children: <Widget>[ FlatButton.icon(
                    onPressed: () => navigateToSecondPage(context),
                    icon: Icon(Icons.location_on,color: Colors.blue,size: 35,),
                    label: Text("location",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))),
                  FlatButton.icon(
                      onPressed: () => navigateToSecondPage(context),
                      icon: Icon(Icons.add_photo_alternate,color: Colors.blue,size: 35,),
                      label: Text("Image",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))),
                  FlatButton.icon(
                      onPressed: () => navigateToSecondPage(context),
                      icon: Icon(Icons.settings_phone,color: Colors.blue,size: 35,),
                      label: Text("Contact",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))),
                  FlatButton.icon(
                      onPressed: () => navigateToSecondPage(context),
                      icon: Icon(Icons.brightness_7,color: Colors.blue,size: 35,),
                      label: Text("Setting",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))),
                  FlatButton.icon(
                      onPressed: () => navigateToSecondPage(context),
                      icon: Icon(Icons.verified_user,color: Colors.blue,size: 35,),
                      label: Text("Help",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16))), ], ),
                //Container(margin: EdgeInsets.only(left: 0)),
              ],)
            // ListTile(title: Text('ช่วยเหลือ',style: TextStyle(fontSize: 20,color: Colors.black)),),
          ],),),
    );
  }
}

Widget headerSection = Column(
  children: <Widget>[
    Container(height: 300, width: 550, child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        _buildCardListView1(),
        _buildCardListView2(),
        _buildCardListView3(),],)   ,)],);

Card _buildCardListView1() {
  return Card(child: Image.network(
      "http://kps.ku.ac.th/kasetfair/images/home_slide/BN-500x333.jpg"),);
}
Card _buildCardListView2() {
  return Card(child: Image.network(
      "https://f.ptcdn.info/252/061/000/pj9cj9fnl3S4dxTFtrU-o.jpg"),);
}
Card _buildCardListView3() {
  return Card(child: Image.network(
      "https://www.nanagarden.com/picture/Forum/For9059_1.jpg"),);
}

Widget titleSetion = Padding(padding: EdgeInsets.all(20), child: Row(
  children: <Widget>[
    Expanded(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("KASETFAIR",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
        Text("Kamphaeng Saen",
          style: TextStyle(color: Colors.grey[500], fontSize: 22),)],)),

    Icon(Icons.more_horiz, color: Colors.black,),
    Container(margin: EdgeInsets.only(left: 7))
  ],),);

Column _buildButtonColumn({IconData icon, String label}) {
  var icColor = Colors.blue.shade500;
  return Column(children: <Widget>[
    Icon(
      icon,
      color: icColor,
      size: 40,
    ),
    Container(margin: EdgeInsets.only(top: 8),
      child: Text(label, style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 13, color: icColor)),),],);
}

Widget button2Section = Padding(padding: EdgeInsets.all(10));
//,child: Row(
//  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//  children: <Widget>[new RaisedButton (
//    onPressed: () => print("RaisedButton"),
//    child: new Text('ค้นหาร้านค้า', style: TextStyle(fontSize: 22 , height: 2),),),

//    new RaisedButton(
//      onPressed: () => print("RaisedButton"),
//    child: new Text('RaisedButton', style: TextStyle(fontSize: 22 , height: 2),),)
// ],) ,);

Widget finalSection = Container (child: Text('** ข่าวสาร !!', style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold, color: Colors.red[800])
  ,),color: Colors.yellow,height: 40,);

Widget final2Section = Padding(padding: EdgeInsets.all(20), child: Row(
  children: <Widget>[Icon(Icons.arrow_right, color: Colors.black, size: 35),
    Expanded (child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("พระเจ้าวรวงศ์เธอ พระองค์เจ้าโสมสวลีฯ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
        Text("วันที่ 2 ธ.ค.ทรงเสด็จเปิดงานเกษตรครั้งที่ 23",
          style: TextStyle(color: Colors.grey[500], fontSize: 20),),

      ],)),
  ],),);

Widget final3Section = Padding(padding: EdgeInsets.all(20), child: Row(
  children: <Widget>[ Icon(Icons.arrow_right, color: Colors.black, size: 35),
    Expanded (child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("การเกษตร 4.0",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
        Text("ภายในงานมีการโชว์นวัตกรรมทางการเกษตร",
          style: TextStyle(color: Colors.grey[500], fontSize: 20),),
      ],)),
  ],),);

navigateToSecondPage(BuildContext context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) {
    return MySecondPage();
  }));
}
navigateToInputPage(BuildContext context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) {
    return InputPage();
  }));
}








