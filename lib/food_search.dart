import 'package:flutter/material.dart';
import 'algolia_service.dart';
import 'food.dart';
import 'app_navigate.dart';

class FoodSearch extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FoodSearchState();
}

class FoodSearchState extends State<FoodSearch> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              //     navigateToImageFood(context);
              //   },
            child: Card(
              child: Image.network(
                  "https://s.isanook.com/tr/0/ud/280/1402313/1.jpg"),
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
                  navigateToImageFoodA(context);
                },
            child:Card(
              child: Image.network(
                  "https://pbs.twimg.com/media/C3QbEqbVMAA0l2I.jpg"),
            ),),
            GestureDetector(
              onTap: () {
                  // print('hello1');
                  navigateToImageFoodB(context);
                },
            child:Card(
              child: Image.network(
                  "https://pbs.twimg.com/media/CmBxHzDWgAAvuGo.jpg"),
            ),
            ),
            GestureDetector(
              onTap: () {
                  // print('hello1');
                  navigateToImageFoodC(context);
                },
            child:Card(
              child: Image.network(
                  "https://pbs.twimg.com/media/C3QbEqdUEAAgSfl.jpg"),
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
                  navigateToImageFoodD(context);
                },
            child:Card(
              child: Image.network(
                  "https://www.chillpainai.com/src/wewakeup/scoop/img_scoop/scoop/kang/fabuary2017/kasetfair/IMG_2468.jpg"),
            ),),
            GestureDetector(
              onTap: () {
                  // print('hello1');
                  navigateToImageFoodE(context);
                },
            child:Card(
              child: Image.network(
                  "https://arch.punpromotion.com/wp-content/uploads/2017/06/S__2523145-1.jpg"),
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

  void navigateToFoodImage(BuildContext context) {}
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
    return FutureBuilder<List<Food>>(
      future: algoliaService.performSearchQuery(text: query),

      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final foods = snapshot.data.map((food) {
            return Container(
              child: Center(
                  child: Card(
                color: Colors.yellow[100],
                child: Column(
                  children: <Widget>[
                    Row(children: <Widget>[
                      Text(
                        "ชื่อร้าน : ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Padding(
                          padding: EdgeInsets.all(7.0),
                          child: Text(
                            food.nameStore.toString(),
                            style: TextStyle(fontSize: 18.0),
                          )),
                    ]),
                    Row(
                      children: <Widget>[
                        Image.network(
                          food.image[0],
                          width: 200,
                          height: 200,
                        ),
                      ],
                    ),
                    Row(children: <Widget>[
                      Text(
                        "ID : ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Padding(
                          padding: EdgeInsets.all(7.0),
                          child: Text(
                            food.idStore,
                            style: TextStyle(fontSize: 18.0),
                          )),
                    ]),
                    Row(children: <Widget>[
                      Text(
                        "zone : ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Padding(
                          padding: EdgeInsets.all(7.0),
                          child: Text(
                            food.zone,
                            style: TextStyle(fontSize: 18.0),
                          )),
                    ]),
                    Row(children: <Widget>[
                      Text(
                        "สินค้า : ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Padding(
                          padding: EdgeInsets.all(7.0),
                          child: Text(
                            food.products.toString(),
                            style: TextStyle(fontSize: 18.0),
                          )),
                    ]),
                    Row(children: <Widget>[
                      Text(
                        "ประเภท : ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Padding(
                          padding: EdgeInsets.all(7.0),
                          child: Text(
                            food.category,
                            style: TextStyle(fontSize: 18.0),
                          )),
                    ]),
                  ],
                ),
              )),
            );
          }).toList();

          return ListView(children: foods);
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
