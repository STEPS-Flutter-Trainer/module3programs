import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:module3programs/location-flutter/view/location_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Location Tracker',
      home: LocationView(),
    );
  }
}
