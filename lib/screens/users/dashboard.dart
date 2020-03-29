import 'package:flutter/material.dart';
import '../../services/app_navigate.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Menu  '),
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
                          color: Colors.pink[100],
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
                          navigateToAgricultureEdit(context);
                        },
                        child: Card(
                          color: Colors.green[200],
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
                          navigateToAnimalsEdit(context);
                        },
                        child: Card(
                          color: Colors.yellow[200],
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
                          color: Colors.purple[200],
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
              Padding(
                padding: const EdgeInsets.all(80.0),
                child: Container(
                  width: 200,
                  height: 300,
                  child: Column(
                    children: <Widget>[
                      Image.network(
                          "https://www.kasetkaoklai.com/home/wp-content/uploads/2019/01/49896409_10157007662962451_2359220712444526592_n-1.jpg"),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
