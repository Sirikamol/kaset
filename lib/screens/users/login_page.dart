import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dashboard.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController ctrlUsername = TextEditingController();
  TextEditingController ctrlPassword = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  void doLogin() {
    if (_formKey.currentState.validate()) {
      String username = ctrlUsername.text;
      String password = ctrlPassword.text;

      print(username);
      print(password);

      if (username.toLowerCase() == 'admin' &&
          password.toLowerCase() == 'admin') {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Dashboard()));
      } else {
        print('Invalid username/password');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.lightGreen[200],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: 150,
                      height: 250,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.network(
                              "https://www.kasetkaoklai.com/home/wp-content/uploads/2019/01/49896409_10157007662962451_2359220712444526592_n-1.jpg")
                        ],
                      ),
                    ),
                  ),
                  Text(
                    'ADMIN LOGIN',
                    style: TextStyle(
                      fontSize: 36.0,
                      // fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                    ),
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
                        fillColor: Colors.yellow[100],
                        border: InputBorder.none),
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
                        fillColor: Colors.yellow[100],
                        border: InputBorder.none),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  RaisedButton(
                    onPressed: () => doLogin(),
                    color: Colors.green[100],
                    child: Text(
                      'Login ',
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
