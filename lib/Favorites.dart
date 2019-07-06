import 'package:flutter/material.dart';

class Favorites extends StatefulWidget {
  Favorites({
    Key key,
  }) : super(key: key);
  @override
  FavoritesState createState() => FavoritesState();
}

class FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
    );
  }
}
