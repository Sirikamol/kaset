import 'package:flutter/material.dart';

class ShopsSearch extends StatefulWidget {
  ShopsSearch({Key key, this.category}) : super(key: key);
  final String category;

  @override
  _ShopsSearchState createState() => _ShopsSearchState();
}

class _ShopsSearchState extends State<ShopsSearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('hello'),
    );
  }
}
