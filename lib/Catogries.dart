import 'package:flutter/material.dart';

class Catogry extends StatefulWidget {
  Catogry({Key key}) : super(key: key);
  @override
  CatogryState createState() => CatogryState();
}

class CatogryState extends State<Catogry> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
    );
  }
}


