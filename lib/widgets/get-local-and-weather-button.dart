import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import '../services/location.dart';
import '../utilities/constants.dart';
import '../screens/home.dart';

class GetLocationAndWeatherButton extends StatefulWidget {
  const GetLocationAndWeatherButton({
    Key? key,
  }) : super(key: key);

  @override
  State<GetLocationAndWeatherButton> createState() =>
      _GetLocationAndWeatherButtonState();
}

class _GetLocationAndWeatherButtonState
    extends State<GetLocationAndWeatherButton> {
  @override
  void initState() {
    super.initState();
  }

  void getLocation() async {
    Location location = Location();
    await location.getPermission();
    await location.getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              horizontal: 38.0,
              vertical: 16.0,
            ),
            backgroundColor: Colors.black.withOpacity(0.2),
            elevation: 0,
          ),
          onPressed: () async {
            getLocation();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MyHomePage(
                  title: title,
                ),
              ),
            );
          },
          child: const Text(
            'Get Current Location & Weather',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.0, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
