import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kasetsart/loginTwo.dart';
//import 'package:kasetsart/mainLogin.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  TextEditingController ctrlUsername = TextEditingController();
  TextEditingController ctrlPassword = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
      return Scaffold(
         body: Stack(
           fit: StackFit.expand,
           children: <Widget>[
            Container(
               color: Colors.blueGrey ,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('MY LOGIN APP', style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold,color: Colors.white),
                    ),
                    TextFormField(
                      validator: (String value) {
                        if (value.isEmpty) return 'กรุณาระบุชื่อผู้ใช้งาน';
                      },
                      controller: ctrlUsername,
                      decoration: 
                        InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          labelText: 'Username',
                          labelStyle: TextStyle(color: Colors.white,fontSize: 20.0),
                          filled: true, fillColor: Colors.white70,border: InputBorder.none),
                    ),
                    SizedBox(height: 10.0,),
                    TextFormField(
                      validator: (String value) {
                        if (value.isEmpty) return 'กรุณาระบุรหัสผ่าน';
                      },
                      controller: ctrlPassword,
                      obscureText:true,
                      decoration: 
                        InputDecoration(
                          prefixIcon: Icon(Icons.vpn_key),
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.white,fontSize: 20.0),
                          filled: true, fillColor: Colors.white70,border: InputBorder.none),
                    ),
                    SizedBox(height: 20.0,),
                    RaisedButton(
                      onPressed: () => doLogin(),
                                          color: Colors.pink,
                                          child: Text(
                                            'Login to app',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.0, fontWeight: FontWeight.bold),
                                            ),
                                        )
                                        //FlatButton(onPressed: () {},child: Text('Help me',style: TextStyle(fontSize: 20.0, color: Colors.white),),),
                                      ],
                                    ),
              ),
                                )
                               ],
                            ) ,
                          );
                      }
                      doLogin() {
                        if(_formKey.currentState.validate()){
                        String username = ctrlUsername.text;
                        String password = ctrlPassword.text;

                        print(username);
                        print(password);

                        if (username == 'admin' && password == 'admin'){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginTwo()));
                        } else {
                          print('Invalid username/password');
                        }
                        }
                      }
}

