import 'package:codeweather/location/current_location.dart';
import 'package:codeweather/model/CurrentWeather.dart';
import 'package:dio/dio.dart';

class WeatherSingleApi{
  Future<CurrentWeather?> getCurrentWeather(String long, String lat) async {
    try {
      
      var url = 'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$long&appid=967ef664c808e2d2dee0782a0e37a998&units=metric';

      var dio = Dio();
      var res = await dio.get(url);
      var body = res.data;
      return CurrentWeather.fromJson(body);
    } catch (e) {
      print(e);
    }
  }
}