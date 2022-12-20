import 'package:codeweather/api/WeatherApi.dart';
import 'package:codeweather/fonts/custom_icons_icons.dart';
import 'package:codeweather/location/current_location.dart';
import 'package:codeweather/model/CurrentWeather.dart';
import 'package:codeweather/widgets/desc.dart';
import 'package:codeweather/widgets/headers.dart';
import 'package:codeweather/widgets/nextday.dart';
import 'package:codeweather/widgets/nexthour.dart';
import 'package:codeweather/widgets/weathers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherSingleApi api = WeatherSingleApi();
  CurrentWeather? data;

  Future<void> getData() async {
    var long = await getLongitude();
    var lat = await getLatitude();
    data = await api.getCurrentWeather(long.toString(), lat.toString());
  }

  @override
  void initState() {
    getLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const int i = 30;
    var dt = DateTime.now();
    var day = DateFormat('EEE').format(dt.add(Duration(days: 1)));
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: FutureBuilder(
              future: getData(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  var a = data?.weather[0].main;
                  return Flexible(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Headers(name: data!.name),
                          const SizedBox(
                            height: 50,
                          ),
                          WeatherCelcius(
                              temp: data!.main.temp,
                              feels: data!.main.feelsLike,
                              weather: data!.weather[0].main,
                              desc: data!.weather[0].description),
                          const SizedBox(
                            height: 50,
                          ),
                          const Text(
                            'No preciptitation within an hour',
                            style: TextStyle(
                                fontSize: 20, 
                                fontWeight: FontWeight.bold,
                                ),
                          ),
                          const SizedBox(height: 30,),
                          //humidity air etc
                          Description(
                              wind: data!.wind.speed,
                              humidity: data!.main.humidity,
                              uvindex: data!.cod,
                              pressure: data!.main.pressure,
                              visib: data!.visibility,
                              dewpoint: data!.main.tempMax),
                          const SizedBox(height: 5,),
                          const NextHour(),
                          const NextDay()
                        ],
                      ),
                    ),
                  );
                } else if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return Container();
              }),
        ),
      ),
    );
  }
}
