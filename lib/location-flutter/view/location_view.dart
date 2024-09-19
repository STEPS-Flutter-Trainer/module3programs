import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/location_controller.dart';

class LocationView extends StatelessWidget {
  final LocationController controller = Get.put(LocationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Location Tracking')),
      body: Center(
        child: Obx(() {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Current Location: ${controller.currentLocation.value}'),
              SizedBox(height: 20),
              Text('Current Address: ${controller.currentAddress.value}'),
              SizedBox(height: 20),

            ],
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.getCurrentLocation(), // Call the method here
        tooltip: 'Get Location',
        child: Icon(Icons.location_searching),
      ),
    );
  }
}
