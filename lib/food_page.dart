import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kasetsart/app_navigate.dart';
import 'package:kasetsart/insert_page.dart' as prefix0;

class FoodPage extends StatefulWidget {
  FoodPage({Key key}) : super(key: key);

  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage>
    with SingleTickerProviderStateMixin {
  static final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>();

  TextEditingController _searchQuery;
  bool _isSearching = false;
  String searchQuery = "Search query";

  @override
  void initState() {
    super.initState();
    _searchQuery = TextEditingController();
  }

  void _startSearch() {
    print("open search box");
    ModalRoute.of(context)
        .addLocalHistoryEntry(LocalHistoryEntry(onRemove: _stopSearching));

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

    return InkWell(
      onTap: () => scaffoldKey.currentState.openDrawer(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
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
    return TextField(
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
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            if (_searchQuery == null || _searchQuery.text.isEmpty) {
              Navigator.pop(context);
              return;
            }
            _clearSearchQuery();
          },
        ),
        IconButton(
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
      IconButton(
        icon: const Icon(Icons.search),
        onPressed: _startSearch,
      ),
    ];
  }

  Widget headerSec = Column(
    children: <Widget>[
      Container(
        height: 210,
        width: 1500,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Card(
              child: Image.network(
                  "https://s.isanook.com/tr/0/ud/280/1402313/1.jpg"),
            ),
          ],
        ),
      )
    ],
  );

  Widget titleSection = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        height: 150,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            GestureDetector(
                onTap: () {
                  print('hello1');
                  
                },
                
                child: Card(
                  child: Image.network(
                      "https://pbs.twimg.com/media/C3QbEqbVMAA0l2I.jpg"),
                    
                )),
            Card(
              child: Image.network(
                  "https://pbs.twimg.com/media/CmBxHzDWgAAvuGo.jpg"),
            ),
            Card(
              child: Image.network(
                  "https://pbs.twimg.com/media/C3QbEqdUEAAgSfl.jpg"),
            )
          ],
        ),
      )
    ],
  );

  Widget title2Section = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Card(
              child: Image.network(
                  "https://www.chillpainai.com/src/wewakeup/scoop/img_scoop/scoop/kang/fabuary2017/kasetfair/IMG_2468.jpg"),
            ),
            Card(
              child: Image.network(
                  "https://arch.punpromotion.com/wp-content/uploads/2017/06/S__2523145-1.jpg"),
            ),
          ],
        ),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          leading: _isSearching ? const BackButton() : null,
          title: _isSearching ? _buildSearchField() : _buildTitle(context),
          actions: _buildActions(),
        ),
        body: ListView(
            children: <Widget>[headerSec, titleSection, title2Section]));
  }
}
