import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                '**INPUT INFORMATION**',
                style: TextStyle(fontSize: 20),
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
                child:
                    Text("อัพโหลดรูป", style: TextStyle(color: Colors.black)),
                onPressed: () {},
              ),
            ],
          ),
          FlatButton(
            color: Colors.red[300],
            child: Text("NEXT", style: TextStyle(color: Colors.black)),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
