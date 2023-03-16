import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';

class Location {

  Location({this.latitude, this.longitude});

  double latitude;
  double longitude;

  Future<void> getLocation() async {
    try {
      Position position =
      await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
      print("Latitude $latitude");
      print("Longitude: $longitude");

    }
    catch (e) {
      print(e);
    }
  }

}

/*
var temperature = decodedData['main']['temp'];
var condition = decodedData['weather'][0]['id'];
var cityName = decodedData['name'];
 */