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
          icon: const Icon(Icons.search),
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
        titleSection,
        title2Section

        ],
        )  
    );
    }
    } 

Widget headerSec = Column(
  children: <Widget>[
    Container(height: 210, width: 1500, child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        _buildCardListView1(),
        ],)   ,)],);

Card _buildCardListView1() {
  return Card(child: Image.network(
      "https://s.isanook.com/tr/0/ud/280/1402313/1.jpg"),);
}

Widget titleSection = Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[
    //Text("??????? ?????????50%", style: TextStyle(fontSize: 18)),
    Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _buildCardListView(),
          _buildCardListView2(),
          _buildCardListView3(),
          _buildCardListView4()
        ],
      ),
    )
  ],
);
Card _buildCardListView() {
  return Card(
    child: Image.network(
        "http://chailaibackpacker.com/wp-content/uploads/2019/01/Kaset-Fair-New-2019-25.jpg"),
  );
}

Card _buildCardListView2() {
  return Card(
    child: Image.network(
        "https://pbs.twimg.com/media/C3QbEqbVMAA0l2I.jpg"),
        
  );
}

Card _buildCardListView3() {
  return Card(
    child: Image.network(
        "https://pbs.twimg.com/media/CmBxHzDWgAAvuGo.jpg"),
  );
}

Card _buildCardListView4() {
  return Card(
    child: Image.network(
        "https://pbs.twimg.com/media/C3QbEqdUEAAgSfl.jpg"),
  );
}

Widget title2Section = Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[
    //Text("??????? ????1???1", style: TextStyle(fontSize: 18)),
    Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _build1CardListView(),
          _build1CardListView1(),
          
        ],
      ),
    )
  ],
);

Card _build1CardListView() {
  return Card(
    child: Image.network(
        "https://www.chillpainai.com/src/wewakeup/scoop/img_scoop/scoop/kang/fabuary2017/kasetfair/IMG_2468.jpg"),
  );
}

Card _build1CardListView1() {
  return Card(
    child:
    Image.network("https://arch.punpromotion.com/wp-content/uploads/2017/06/S__2523145-1.jpg"),
  );
}





navigateToFoodSearch(BuildContext context, String category) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return FoodSearch(category: category);
  }));
}









