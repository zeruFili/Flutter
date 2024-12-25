import 'package:geolocator/geolocator.dart';

class GetLocation {
  double longtuide = 0;
  double latitude = 0;

  Future<void> getLocation() async {
    // Requesting permission to access location
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission != LocationPermission.whileInUse &&
          permission != LocationPermission.always) {
        return;
      }
    }

    // Setting location settings
    final LocationSettings locationSettings = LocationSettings(
      accuracy: LocationAccuracy.low,
      distanceFilter: 100,
    );

    try {
      // Getting current position
      Position position = await Geolocator.getCurrentPosition(
          locationSettings: locationSettings);

      latitude = position.latitude;
      longtuide = position.longitude;
    } catch (e) {}
  }
}
