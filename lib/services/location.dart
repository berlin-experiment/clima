import 'dart:developer';

import 'package:geolocator/geolocator.dart';

class Location {
  late double latitude;
  late double longitude;

  Future<void> getPermission() async {
    try {
      LocationPermission permission = await Geolocator.requestPermission();
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);

      latitude = position.latitude;
      longitude = position.longitude;

      log(position.toString());
    } catch (e) {
      log(e.toString());
    }
  }
}
