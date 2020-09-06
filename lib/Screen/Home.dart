import 'package:darkmodedashboard_flutter/Screen/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final List _screens = [
    HomeScreenPage(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
        (
        elevation: 2.0,
        backgroundColor: Color(0XFF424242),
        title: Text('Dashify', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 30.0)),
        actions: <Widget>
        [
          Container
            (
            margin: EdgeInsets.only(right: 8.0),
            child: Row
              (
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
            ),
          )
        ],
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0XFF424242),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.grey[600],
        selectedItemColor: Color(0XFFFFFFFF),
        elevation: 0.0,
        items: [Icons.home, Icons.star_border, Icons.video_collection, Icons.account_circle_outlined]
            .asMap()
            .map((key, value) => MapEntry(
          key,
          BottomNavigationBarItem(
            title: Text(''),
            icon: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 6.0,
                horizontal: 16.0,
              ),

              child: Icon(value,),
            ),
          ),
        ))
            .values
            .toList(),
      ),
    );
  }
}


