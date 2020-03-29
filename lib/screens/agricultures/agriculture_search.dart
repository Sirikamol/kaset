import 'package:flutter/material.dart';
import '../../models/agriculture.dart';
import '../../services/algolia_service.dart';
import '../../services/app_navigate.dart';

class AgricultureSearch extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AgricultureSearchState();
}

class AgricultureSearchState extends State<AgricultureSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('ค้นหา'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              },
            )
          ],
        ),
        body: ListView(children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 210,
                width: 1500,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    GestureDetector(
                      child: Card(
                        child: Image.network(
                            "https://my.kapook.com/imagescontent/fb_img/530/s_203918_9482.jpg"),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 170,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        navigateToImageAgricultureA(context);
                      },
                      child: Card(
                        child: Image.network(
                            "http://www.clicksii.com/photostock/wp-content/uploads/2018/06/cactus-4-560x420.jpg"),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        navigateToImageAgricultureB(context);
                      },
                      child: Card(
                        child: Image.network(
                            "https://i.ytimg.com/vi/uq5T6u_Towg/maxresdefault.jpg"),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 170,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          // print('hello1');
                          navigateToImageAgricultureC(context);
                        },
                        child: Card(
                          child: Image.network(
                              "https://travel.mthai.com/app/uploads/2018/11/sunflower-9.jpg"),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // print('hello1');
                          navigateToImageAgricultureD(context);
                        },
                        child: Card(
                          child: Image.network(
                              "https://www.organicfarmthailand.com/wp-content/uploads/2016/01/WP_20160130_067.jpg"),
                        ),
                      ),
                    ],
                  ),
                  // ListView(
                  //   children: <Widget>[
                  //   Column(
                  //     children: <Widget>[
                  //       Container(
                  //         height: 210,
                  //         width: 1500,
                  //         child: ListView(
                  //           scrollDirection: Axis.horizontal,
                  //           children: <Widget>[
                  //             GestureDetector(
                  //               child: Card(
                  //                 child: Image.network(
                  //                     "https://my.kapook.com/imagescontent/fb_img/530/s_203918_9482.jpg"),
                  //               ),
                  //             ),
                  //             Column(
                  //                 crossAxisAlignment: CrossAxisAlignment.start,
                  //                 children: <Widget>[
                  //                   Container(
                  //                     height: 170,
                  //                     child: ListView(
                  //                       scrollDirection: Axis.horizontal,
                  //                       children: <Widget>[
                  //                         GestureDetector(
                  //                           onTap: () {
                  //                             navigateToImageAgricultureC(context);
                  //                           },
                  //                           child: Card(
                  //                             child: Image.network(
                  //                                 "https://travel.mthai.com/app/uploads/2018/11/sunflower-9.jpg"),
                  //                           ),
                  //                         ),
                  //                         GestureDetector(
                  //                           onTap: () {
                  //                             navigateToImageAgricultureD(context);
                  //                           },
                  //                           child: Card(
                  //                             child: Image.network(
                  //                                 "https://www.organicfarmthailand.com/wp-content/uploads/2016/01/WP_20160130_067.jpg"),
                  //                           ),
                  //                         ),
                  //                         Column(
                  //                           crossAxisAlignment: CrossAxisAlignment.start,
                  //                           children: <Widget>[
                  //                             Container(
                  //                               height: 170,
                  //                               child: ListView(
                  //                                 scrollDirection: Axis.horizontal,
                  //                                 children: <Widget>[
                  //                                   GestureDetector(
                  //                                     onTap: () {
                  //                                       navigateToFoodEdit(context);
                  //                                     },
                  //                                     child: Card(
                  //                                       child: Image.network(
                  //                                           "https://travel.mthai.com/app/uploads/2018/11/sunflower-9.jpg"),
                  //                                     ),
                  //                                   ),
                  //                                   GestureDetector(
                  //                                     onTap: () {
                  //                                       navigateToFoodEdit(context);
                  //                                     },
                  //                                     child: Card(
                  //                                       child: Image.network(
                  //                                           "https://www.organicfarmthailand.com/wp-content/uploads/2016/01/WP_20160130_067.jpg"),
                  //                                     ),
                  //                                   ),
                  //                                 ],
                  //                               ),
                  //                             )
                  //                           ],
                  //                         ),
                  //                       ],
                  //                     ),
                  //                   ),
                  //                 ])
                  //           ],
                  //         ),
                  //       )
                  //     ],
                  //   )
                  // ])
                )
              ])
        ]));
  }
}

class DataSearch extends SearchDelegate<String> {
  final algoliaService = AlgoliaService.instance;

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return FutureBuilder<List<Agriculture>>(
      future: algoliaService.performAgricultureQuery(text: query),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final agriculture = snapshot.data.map((agriculture) {
            return Container(
              child: Center(
                  child: Card(
                color: Colors.lightGreen[200],
                child: Column(
                  children: <Widget>[
                    Row(children: <Widget>[
                      Text(
                        "   ชื่อร้าน : ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Padding(
                          padding: EdgeInsets.all(7.0),
                          child: Text(
                            agriculture.nameStore.toString(),
                            style: TextStyle(fontSize: 18.0),
                          )),
                    ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.network(
                          agriculture.image[0],
                          width: 200,
                          height: 200,
                        ),
                      ],
                    ),
                    Row(children: <Widget>[
                      Text(
                        "   เลขที่ร้าน : ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Padding(
                          padding: EdgeInsets.all(7.0),
                          child: Text(
                            agriculture.idStore,
                            style: TextStyle(fontSize: 18.0),
                          )),
                    ]),
                    Row(children: <Widget>[
                      Text(
                        "   โซน : ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Padding(
                          padding: EdgeInsets.all(7.0),
                          child: Text(
                            agriculture.zone,
                            style: TextStyle(fontSize: 18.0),
                          )),
                    ]),
                    Row(children: <Widget>[
                      Text(
                        "   สินค้า : ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Padding(
                          padding: EdgeInsets.all(7.0),
                          child: Text(
                            agriculture.products.toString(),
                            style: TextStyle(fontSize: 18.0),
                          )),
                    ]),
                    Row(children: <Widget>[
                      Text(
                        "   ประเภท : ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Padding(
                          padding: EdgeInsets.all(7.0),
                          child: Text(
                            agriculture.category,
                            style: TextStyle(fontSize: 18.0),
                          )),
                    ]),
                  ],
                ),
              )),
            );
          }).toList();

          return ListView(children: agriculture);
        } else if (snapshot.hasError) {
          return Center(
            child: Text("${snapshot.error.toString()}"),
          );
        }

        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}