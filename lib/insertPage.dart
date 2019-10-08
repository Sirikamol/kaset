import 'package:flutter/material.dart';

class InsertPage extends StatefulWidget {
  InsertPage({Key key, this.title}) : super(key: key);
  final String title;
  _InsertPageState createState() => _InsertPageState();
}

class _InsertPageState extends State<InsertPage> {
  String dropdownValue = 'A';
  String dropdownValue1 = '1';
  String dropdownValue2 = 'การเกษตร';

  var label1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                'INSERT INFORMATION',
                style: TextStyle(fontSize: 20,color: Colors.lightGreen,fontWeight: FontWeight.bold),
              ),
              Row(
                children: <Widget>[
                  label1 = Text("โซน", style: TextStyle(fontSize: 18)),
                  DropdownButton<String>(
                    value: dropdownValue,
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: <String>['A', 'B', 'C', 'D']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              )
            ],
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  label1 = Text("เลขที่เต้น", style: TextStyle(fontSize: 18)),
                  DropdownButton<String>(
                    value: dropdownValue1,
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue1 = newValue;
                      });
                    },
                    items: <String>['1', '2', '3', '4']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              )
            ],
          ),
          Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'ชื่อร้าน'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'กรอกชื่อร้าน'),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  label1 = Text("ประเภท",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  DropdownButton<String>(
                    value: dropdownValue2,
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue2 = newValue;
                      });
                    },
                    items: <String>['การเกษตร', 'ของกิน', 'ของใช้', 'สัตว์']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              )
            ],
          ),
          Column(
            children: <Widget>[
              TextField(
                  decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'รายการสินค้า',
              )),
              TextFormField(
                decoration: InputDecoration(labelText: 'กรอกรายการสินค้า'),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'รูป')),
              TextFormField(
                decoration:
                    InputDecoration(labelText: 'ลิงค์/ที่อยู่รูปร้านค้า'),
              ),
              FlatButton(
                  color: Colors.red[300],
                  child: Text("อัพโหลดรูป",
                      style: TextStyle(color: Colors.black))),
            ],
          ),
          FlatButton(
              color: Colors.red[300],
              child: Text("NEXT", style: TextStyle(color: Colors.black))),
        ],
      ),
    );
  }
}
