import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';

const apikey = '9274b274874c94a9b10f3a288c7d8e96';

class WeatherModel {
  Future<dynamic> getCityWeather(String cityName) async {
    try {
      // print('City Name: $cityName'); // Debugging output
      String url =
          'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apikey&units=metric';
      print('Requesting URL: $url'); // Debugging output

      NetworkHelper networkHelper = NetworkHelper(url);
      var weatherData = await networkHelper.getData();

      if (weatherData == null) {
        throw Exception('Failed to load weather data');
      }

      // print('Weather Data: $weatherData'); // Debugging output
      return weatherData;
    } catch (e) {
      print('Error: $e'); // Error handling
      return null; // or throw the error
    }
  }

  Future<dynamic> getLocationWeather() async {
    GetLocation getlocations = GetLocation();
    await getlocations.getLocation();

    NetworkHelper networkHelper = NetworkHelper(
        'https://api.openweathermap.org/data/2.5/weather?lat=${getlocations.latitude}&lon=${getlocations.longtuide}&appid=$apikey&units=metric');

    var weatherData = await networkHelper.getData();

    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
