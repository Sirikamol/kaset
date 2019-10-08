import 'package:flutter/material.dart';

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
        child: Text(
          'loginTwo',
          style: TextStyle(fontSize: 45.0, color: Colors.black12),
        ),
      ),
    );
  }
}
