import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class Description extends StatelessWidget {
  final double wind;
  final int humidity;
  final int uvindex;
  final int pressure;
  final int visib;
  final double dewpoint;
  const Description(
      {super.key,
      required this.wind,
      required this.humidity,
      required this.uvindex,
      required this.pressure,
      required this.visib,
      required this.dewpoint});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.black12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    child: Center(child: Text('Wind: ${wind}m/s N')),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    child: Center(child: Text('Humidity: ${humidity}%')),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    child: Center(
                        child: Text(
                            'UV index: ${(uvindex / 100).toStringAsFixed(1)}')),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    child: Center(child: Text('Pressure: ${pressure}hPa')),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    child: Center(
                        child: Text(
                            'Visibility: ${(visib / 1000).toStringAsFixed(2)}km')),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    child: Center(child: Text('Dew point: ${dewpoint}°C')),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
