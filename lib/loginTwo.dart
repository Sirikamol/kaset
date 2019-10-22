import 'package:flutter/material.dart';
import 'package:kasetsart/insertPage.dart';

class LoginTwo extends StatefulWidget {
  @override
  _LoginTwoState createState() => _LoginTwoState();
}

class _LoginTwoState extends State<LoginTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to my app'),
      ),
      body: Center(
        child: 
          FlatButton(
            onPressed: () => navigateToInsertPage(context),
              color: Colors.red[300],
              child: Text("NEXT", style: TextStyle(color: Colors.black))),
          
        ),
      );
    
  }
}
navigateToInsertPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return InsertPage();
  }));
}
