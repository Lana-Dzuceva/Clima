import 'dart:convert';

import 'package:clima/screens/location_screen.dart';
import 'package:flutter/material.dart';

import '../services/weather.dart';


class LoadingScreen extends StatefulWidget {
  @override
  LoadingScreenState createState() => LoadingScreenState();
}

class LoadingScreenState extends State<LoadingScreen> {

  Future<void> getLocationData() async {
    var weatherData = await WeatherModel().getLocationData();

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LocationScreen(locationWeather: weatherData),
        ));
  }

  @override
  void initState() {
    super.initState();
    getLocationData();
    // _initPermission().ignore();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
