import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kasetsart/login_two.dart';
//import 'package:kasetsart/mainLogin.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController ctrlUsername = TextEditingController();
  TextEditingController ctrlPassword = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  doLogin() {
    if (_formKey.currentState.validate()) {
      String username = ctrlUsername.text;
      String password = ctrlPassword.text;

      print(username);
      print(password);

      if (username.toLowerCase() == 'admin' &&
          password.toLowerCase() == 'admin') {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginTwo()));
      } else {
        print('Invalid username/password');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            color: Colors.green[200],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'MY LOGIN APP',
                    style: TextStyle(
                        fontSize: 40.0,
                        // fontWeight: FontWeight.bold,
                        color: Colors.grey[700],),
                  ),
                  TextFormField(
                    validator: (String value) {
                      if (value.isEmpty) return 'กรุณาระบุชื่อผู้ใช้งาน';
                    },
                    controller: ctrlUsername,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: 'Username',
                        labelStyle:
                            TextStyle(color: Colors.grey[500], fontSize: 20.0),
                        filled: true,
                        fillColor: Colors.white70,
                        
                        border: InputBorder.none
                        ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    validator: (String value) {
                      if (value.isEmpty) return 'กรุณาระบุรหัสผ่าน';
                    },
                    controller: ctrlPassword,
                    obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.vpn_key),
                        labelText: 'Password',
                        labelStyle:
                            TextStyle(color: Colors.grey[500], fontSize: 20.0),
                        filled: true,
                        fillColor: Colors.white70,
                        border: InputBorder.none),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  RaisedButton(
                    onPressed: () => doLogin(),
                    color: Colors.green[100],
                    child: Text(
                      'Login to app',
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                          
                    ),
                    
                  )
                  //FlatButton(onPressed: () {},child: Text('Help me',style: TextStyle(fontSize: 20.0, color: Colors.white),),),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
