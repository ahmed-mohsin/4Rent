import 'package:f_rent/Catogries.dart';
import 'package:f_rent/Chat.dart';
import 'package:f_rent/Favorites.dart';
import 'package:f_rent/Home.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'For Rent',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Key keyOne = PageStorageKey('pageOne');
  final Key keyTwo = PageStorageKey('pageTwo');
  final Key keyThree = PageStorageKey('pageThree');
  final Key keyFour = PageStorageKey('pageFour');

  int currentTab = 0;

  Home one;
  Catogry two;
  Favorites three;
  Chat four;
  List<Widget> pages;
  Widget currentPage;

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  void initState() {
    one = Home(
      key: keyOne,
    );
    two = Catogry(
      key: keyTwo,
    );
    three = Favorites(
      key: keyThree,
    );
    four = Chat(
      key: keyFour,
    );

    pages = [one, two,three,four];
    currentPage = one;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: ListView(children: <Widget>[Text("hello")],),),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add_box,color: Colors.white,size: 25,),onPressed: (){}),
      appBar: AppBar(
        title: Text("4Rent"),
      ),
      body: PageStorage(
        child: currentPage,
        bucket: bucket,
      ),
      bottomNavigationBar: BottomNavigationBar(fixedColor: Colors.blue,
        currentIndex: currentTab,
        onTap: (int index) {
          setState(() {
            currentTab = index;
            currentPage = pages[index];
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.home,color: Colors.white,),
            title: Text('Home',style: TextStyle(color: Colors.white),),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.category,color: Colors.white,),
            title: Text('Catogries',style: TextStyle(color: Colors.white),),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.favorite,color: Colors.white,),
            title: Text('Favorites',style: TextStyle(color: Colors.white),),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.chat_bubble,color: Colors.white,),
            title: Text('Chats',style: TextStyle(color: Colors.white),),
          ),
        ],
      ),
    );
  }
}


