import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({
    Key key,
  }) : super(key: key);
  @override
  HomeState createState() => HomeState();
}
class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
    );
  }
}
