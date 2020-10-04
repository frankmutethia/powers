import 'package:flutter/material.dart';
import 'package:powers/screens/destination_carouselone.dart';
import 'package:powers/screens/homepage_screen.dart';
import 'package:powers/screens/destination_carousel.dart';
import 'package:powers/screens/destination_carouselone.dart';
import 'package:powers/screens/hotel_carousel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TravelScreen extends StatefulWidget {
  @override
  _TravelScreenState createState() => _TravelScreenState();
}

class _TravelScreenState extends State<TravelScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 30.0),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 120.0),
                child: Text(
                  'What would you like to find?',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(height: 20.0),
              DestinationCarousel(),
              SizedBox(height: 20.0),
              // DestinationCarouselOne(),
              HotelCarousel(), //importation of hotel_carousel
            ],
          ),
        ),
      ),
    );
  }
}
