import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  Chat({
    Key key,
  }) : super(key: key);
  @override
  ChatState createState() => ChatState();
}
class ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
    );
  }
}

