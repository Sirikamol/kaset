import 'package:flutter/material.dart';
import 'app_navigate.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Center(
            child: ButtonBar(
          children: <Widget>[
            // FlatButton(
            //     onPressed: () => navigateToFoodEdit(context),
            //     color: Colors.red[300],
            //     child: Text("Food", style: TextStyle(color: Colors.black))),
            FlatButton(
                onPressed: () => navigateToAnimalsEdit(context),
                color: Colors.red[300],
                child: Text("animals", style: TextStyle(color: Colors.black))),
            FlatButton(
                onPressed: () => navigateToAgricultureEdit(context),
                color: Colors.red[300],
                child: Text("agriculture", style: TextStyle(color: Colors.black))),
            FlatButton(
                onPressed: () => navigateToGeneralEdit(context),
                color: Colors.red[300],
                child: Text("general", style: TextStyle(color: Colors.black))),
          ],
          
        )),
      ),
    );
  }
}

