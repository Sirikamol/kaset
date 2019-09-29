import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kasetsart/main.dart';
import 'package:kasetsart/secondPage.dart';
import 'package:kasetsart/foodSearch.dart';

import 'inputPage.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kasetfair App',
      theme: ThemeData(///
      ),
      home: FoodPage(title: 'Foodpage'),
      debugShowCheckedModeBanner: false,

      
      //actions: <Widget>[
      //IconButton(
      //icon: Icon(Icons.search),
      // tooltip: 'Search',
      //onPressed: null,),],backgroundColor: Colors.lightGreen,


      //      body: ListView(children: <Widget>[headerSection,titleSetion,final2Section,
      //FlatButton(color: Colors.red[300],child: Text("Go to Second page",style: TextStyle(color: Colors.white)),onPressed: () => navigateToSecondPage(context)),]),
    );

  }
}
class FoodPage extends StatefulWidget {
  FoodPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _FoodPageState createState() => _FoodPageState();
}
class _FoodPageState extends State<FoodPage> 
  with SingleTickerProviderStateMixin {
  static final GlobalKey<ScaffoldState> scaffoldKey =
  new GlobalKey<ScaffoldState>();

  TextEditingController _searchQuery;
  bool _isSearching = false;
  String searchQuery = "Search query";

  @override
  void initState() {
    super.initState();
    _searchQuery = new TextEditingController();
  }

  void _startSearch() {
    print("open search box");
    ModalRoute
        .of(context)
        .addLocalHistoryEntry(new LocalHistoryEntry(onRemove: _stopSearching));

    setState(() {
      _isSearching = true;
    });
  }

  void _stopSearching() {
    _clearSearchQuery();

    setState(() {
      _isSearching = false;
    });
  }

  void _clearSearchQuery() {
    print("close search box");
    setState(() {
      _searchQuery.clear();
      updateSearchQuery("Search query");
    });
  }

  Widget _buildTitle(BuildContext context) {
    var horizontalTitleAlignment =
    Platform.isIOS ? CrossAxisAlignment.center : CrossAxisAlignment.start;

    return new InkWell(
      onTap: () => scaffoldKey.currentState.openDrawer(),
      child: new Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: horizontalTitleAlignment,
          children: <Widget>[
            const Text('Seach box'),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchField() {
    return new TextField(
      controller: _searchQuery,
      autofocus: true,
      decoration: const InputDecoration(
        hintText: 'Search...',
        border: InputBorder.none,
        hintStyle: const TextStyle(color: Colors.white30),
      ),
      style: const TextStyle(color: Colors.white, fontSize: 16.0),
      onChanged: updateSearchQuery,
    );
  }

  void updateSearchQuery(String newQuery) {

    setState(() {
      searchQuery = newQuery;
    });
    print("search query " + newQuery);

  }

  List<Widget> _buildActions() {

    if (_isSearching) {
      return <Widget>[
        new IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            if (_searchQuery == null || _searchQuery.text.isEmpty) {
              Navigator.pop(context);
              return;
            }
            _clearSearchQuery();
          },
        ),
        new IconButton(
          icon: const Icon(Icons.arrow_left),
          onPressed: () {

            if (_searchQuery == null || _searchQuery.text.isEmpty) {
              Navigator.pop(context);
              return;      
            }
            navigateToFoodSearch(context, _searchQuery.text);
          },
          ),  
      ]; 
    }
      
    return <Widget>[
      new IconButton(
        icon: const Icon(Icons.search),
        onPressed: _startSearch,
      ),
    ];
    
    
    
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: scaffoldKey,
      appBar: new AppBar( 
        leading: _isSearching ? const BackButton() : null,
        title: _isSearching ? _buildSearchField() : _buildTitle(context),
        actions: _buildActions(),   
        
      ),
      
      body: ListView(children: <Widget>[
        headerSec,

        ],
        )  
    );
    }
    } 

Widget headerSec = Column(
  children: <Widget>[
    Container(height: 250, width: 550, child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        _buildCardListView1(),
        ],)   ,)],);

Card _buildCardListView1() {
  return Card(child: Image.network(
      "http://kps.ku.ac.th/kasetfair/images/home_slide/BN-500x333.jpg"),);
}



navigateToFoodSearch(BuildContext context, String category) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return FoodSearch(category: category);
  }));
}









