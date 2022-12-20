import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WeatherCelcius extends StatelessWidget {
  final double temp;
  final double feels;
  final String weather;
  final String desc;
  const WeatherCelcius(
      {super.key, required this.weather, required this.desc, required this.temp, required this.feels});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.wb_sunny_rounded,
              color: Colors.amberAccent,
              size: 60,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  weather,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Text(desc)
              ],
            )
          ],
        ),
        Text(
          '$temp°C',
          style: TextStyle(fontSize: 80),
        ),
        Text(
          'Fells like $feels°C',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
        )
      ],
    );
  }
}
