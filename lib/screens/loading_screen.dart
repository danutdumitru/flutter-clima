import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import '../services/location.dart';
import '../services/location.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void _getLocation() async {
    Location location = Location();
    await location.getLocation();
    print('latitude ${location.latitude} , longitude ${location.longitude}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  @override
  void initState() {
    super.initState();
    _getLocation();
  }
}
