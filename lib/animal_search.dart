import 'package:flutter/material.dart';
import 'algolia_service.dart';
import 'animals.dart';
import 'app_navigate.dart';

class AnimalSearch extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AnimalSearchState();
}

class AnimalSearchState extends State<AnimalSearch> {
  

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
                  "https://i.ytimg.com/vi/iwvHrupRk6I/maxresdefault.jpg"),
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
                  navigateToImageAnimalsA(context);
                },
            child:Card(
              child: Image.network(
                  "https://f.ptcdn.info/020/013/000/1386375631-DSC0056JPG-o.jpg"),
            ),),
            GestureDetector(
              onTap: () {
                  // print('hello1');
                  navigateToImageAnimalsB(context);
                },
            child:Card(
              child: Image.network(
                  "http://chailaibackpacker.com/wp-content/uploads/2017/01/Page1.jpg"),
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
                  navigateToImageAnimalsC(context);
                },
            child:Card(
              child: Image.network(
                  "http://images.voicetv.co.th/media/640/0/storage0/1020294.jpg"),
            ),),
            GestureDetector(
              onTap: () {
                  // print('hello1');
                  navigateToImageAnimalsD(context);
                },
            child:Card(
              child: Image.network(
                  "http://jjpetonline.com/picture/shop373/shop_373_6020_1.jpg"),
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
    return FutureBuilder<List<Animals>>(
      future: algoliaService.performAnimalQuery(text: query),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final animals = snapshot.data.map((animals) {
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
                            animals.nameStore.toString(),
                            style: TextStyle(fontSize: 18.0),
                          )),
                    ]),
                    // Padding(
                    //   padding: const EdgeInsets.all(2.0),
                      // child: 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.network(
                            animals.image[0],
                            width: 200,
                            height: 200,
                          ),
                        ],
                      ),
                    // ),
                    Row(children: <Widget>[
                      Text(
                        "   เลขที่ร้าน : ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Padding(
                          padding: EdgeInsets.all(7.0),
                          child: Text(
                            animals.idStore,
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
                            animals.zone,
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
                            animals.products.toString(),
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
                            animals.category,
                            style: TextStyle(fontSize: 18.0),
                          )),
                    ]),
                  ],
                ),
              )),
            );
          }).toList();

          return ListView(children: animals);
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
