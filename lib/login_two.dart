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
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          navigateToFoodEdit(context);
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
                          navigateToAnimalsEdit(context);
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
                          navigateToAgricultureEdit(context);
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
                          navigateToGeneralEdit(context);
                        },
                        child: Card(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.all(7.0),
                                  child: Column(
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
            ],
          ),
        )

        // body: Padding(
        //   padding: const EdgeInsets.all(2.0),
        //   // child: Center(
        //       child: ButtonBar(
        //     children: <Widget>[

        //       Column(
        //         children: <Widget>[
        //           FlatButton(
        //               onPressed: () => navigateToFoodEdit(context),
        //               color: Colors.red[300],
        //             child: Text("Food", style: TextStyle(color: Colors.black))),
        //           FlatButton(
        //               onPressed: () => navigateToAnimalsEdit(context),
        //               color: Colors.red[300],
        //               child: Text("animals", style: TextStyle(color: Colors.black))),
        //           FlatButton(
        //               onPressed: () => navigateToAgricultureEdit(context),
        //               color: Colors.red[300],
        //               child: Text("agriculture", style: TextStyle(color: Colors.black))),
        //           FlatButton(
        //               onPressed: () => navigateToGeneralEdit(context),
        //               color: Colors.red[300],
        //               child: Text("general", style: TextStyle(color: Colors.black))),
        //         ],
        //       ),

        //     ],

        //   ),
        // ),
        );
  }
}
