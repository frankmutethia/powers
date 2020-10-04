import 'package:flutter/material.dart';
//import 'package:powers/screens/login_screen.dart';
import 'package:powers/screens/home_screen.dart';
import 'package:powers/screens/travel_screen.dart';
import 'package:powers/screens/settings_screen.dart';
//import 'package:powers/screens/welcome_screen.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
          MyBottomNavigationBar(), //settting a route for the BottomNavigationBar
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  //do not use the default names for the classes such as the bottomnavigationbar
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    TravelScreen(),
    SettingsScreen(),
  ];
  //create a method for the onTappedBar
  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            title: Text('Travel'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      ),
    );
  }
}
