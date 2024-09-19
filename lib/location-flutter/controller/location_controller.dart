import 'package:get/get.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class LocationController extends GetxController {
  var currentLocation = ''.obs;
  var currentAddress = ''.obs;

  @override
  void onInit() {
    super.onInit();
    getCurrentLocation();
  }

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      currentLocation.value = 'Lat: ${position.latitude}, Lng: ${position.longitude}';

      // Get address
      List<Placemark> placeMarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );
      if (placeMarks.isNotEmpty) {
        Placemark place = placeMarks.first;
        String city = place.locality ?? 'Unknown City';
        String state = place.administrativeArea ?? 'Unknown State';
        currentAddress.value = '$city, $state';
      } else {
        currentAddress.value = 'No address found';
      }
    } catch (e) {
      print('Error: $e');
    }
  }
}
