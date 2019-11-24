import 'package:flutter/material.dart';
import 'package:kasetsart/general.dart';
import 'algolia_service.dart';
import 'app_navigate.dart';

class GeneralSearch extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => GeneralSearchState();
}

class GeneralSearchState extends State<GeneralSearch> {
  

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
      body:ListView(
        children: <Widget>[
          Column(
    children: <Widget>[
      Container(
        height: 210,
        width: 1500,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            GestureDetector(
              // onTap: () {
              //     // print('hello1');
              //     navigateToFoodEdit(context);
              //   },
            child: Card(
              child: Image.network(
                  "https://s359.kapook.com/pagebuilder/65f2fcb3-a1b6-4cd4-a53a-a03d97250f51.jpg"),
            ),),
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
                  navigateToImageGeneralsA(context);
                },
            child:Card(
              child: Image.network(
                  "https://miro.medium.com/max/4000/1*-0GnyjiGWUG1PhQiR7_kIg.jpeg"),
            ),),
            GestureDetector(
              onTap: () {
                  // print('hello1');
                  navigateToImageGeneralsB(context);
                },
            child:Card(
              child: Image.network(
                  "https://pbs.twimg.com/media/Db8v_l-UQAALADn.jpg"),
            ),
            ),
            // GestureDetector(
            //   onTap: () {
            //       // print('hello1');
            //       navigateToFoodEdit(context);
            //     },
            // child:Card(
            //   child: Image.network(
            //       "https://pbs.twimg.com/media/C3QbEqdUEAAgSfl.jpg"),
            // ),),
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
                  navigateToImageGeneralsC(context);
                },
            child:Card(
              child: Image.network(
                  "https://arch.punpromotion.com/wp-content/uploads/2018/03/29542170_1706983906004622_2199627233934483432_n.jpg"),
            ),),
            GestureDetector(
              onTap: () {
                  // print('hello1');
                  navigateToImageGeneralsD(context);
                },
            child:Card(
              child: Image.network(
                  "https://aboutmom.co/wp-content/uploads/2019/04/nanmeebooks_9-500x500.jpg"),
            ),
            ),
          ],
        ),
      )
    ],
    ),

        ],
      )
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final algoliaService = AlgoliaService.instance;

  @override
  List<Widget> buildActions(BuildContext context) {
    // Actions for app bar
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
    // Leading icon on the left of the app bar
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
    return FutureBuilder<List<Generals>>(
      future: algoliaService.performGeneralsQuery(text: query),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final generals = snapshot.data.map((generals) {
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
                            generals.nameStore.toString(),
                            style: TextStyle(fontSize: 18.0),
                          )),
                    ]),
                     Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.network(
                            generals.image[0],
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
                            generals.idStore,
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
                            generals.zone,
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
                            generals.products.toString(),
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
                            generals.category,
                            style: TextStyle(fontSize: 18.0),
                          )),
                    ]),
                  ],
                ),
              )),
            );
          }).toList();

          return ListView(children: generals);
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