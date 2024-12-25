import 'package:flutter/material.dart';
import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:clima/services/weather.dart';

const apikey = '9274b274874c94a9b10f3a288c7d8e96';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude = 0;
  double longitude = 0; // Corrected the spelling of 'longitude'

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    WeatherModel weathermodel = WeatherModel();
    var WeatherData = await weathermodel.getLocationWeather();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(
        locationdata: WeatherData,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.00,
        ),
      ),
    );
  }
}
