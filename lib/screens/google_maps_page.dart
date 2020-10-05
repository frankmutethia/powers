import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapsPage extends StatefulWidget {
  final String location;

  const GoogleMapsPage({Key key, this.location}) : super(key: key);
  @override
  _GoogleMapsPageState createState() => _GoogleMapsPageState();
}

class _GoogleMapsPageState extends State<GoogleMapsPage> {
  String get userDestination => widget.location;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  Completer<GoogleMapController> _controller = Completer();
  GoogleMapController mapController;

  String searchAddr;

  static double latitudeCurrent = 40.7128;
  static double longitudeCurrent = -74.0060;

  // Intial Map postion
  CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(latitudeCurrent, longitudeCurrent),
    zoom: 10,
  );

//Animating to the new user lat and long
  Future<void> _goToYourLocation() async {
    mapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
      target: LatLng(latitudeCurrent, longitudeCurrent),
      zoom: 15,
    )));
  }

  searchandNavigate() async {
    try {
      List<Address> addresses =
          await Geocoder.local.findAddressesFromQuery(searchAddr);
      var first = addresses.first;
      setState(() {
        latitudeCurrent = first.coordinates.latitude;
        longitudeCurrent = first.coordinates.longitude;
      });
      _goToYourLocation();
    } catch (e) {
      showInSnackBar("Location not found", Colors.red);
    }
  }

  void showInSnackBar(String value, Color bgColor) {
    _scaffoldKey.currentState.showSnackBar(
      SnackBar(
        backgroundColor: bgColor,
        content: Text(value),
      ),
    );
  }

  @override
  void initState() {
    searchAddr = userDestination;
    searchandNavigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Stack(
        children: <Widget>[
          GoogleMap(
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              mapController = controller;
              _controller.complete(controller);
            },
          ),
          Positioned(
            top: 30.0,
            right: 15.0,
            left: 15.0,
            child: Container(
              height: 50.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Address',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 15.0, top: 15.0),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: searchandNavigate,
                    iconSize: 30.0,
                  ),
                ),
                onChanged: (val) {
                  setState(() {
                    searchAddr = val;
                  });
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
