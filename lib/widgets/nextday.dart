import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class NextDay extends StatelessWidget {
  const NextDay({super.key});

  @override
  Widget build(BuildContext context) {
    var dt = DateTime.now();
    List<List<String>> list = [
      [DateFormat('EEE').format(dt), DateFormat('MMM').format(dt), '${dt.day}'],
      [
        DateFormat('EEE').format(dt.add(Duration(days: 1))),
        DateFormat('MMM').format(dt),
        '${dt.day + 1}'
      ],
      [
        DateFormat('EEE').format(dt.add(Duration(days: 2))),
        DateFormat('MMM').format(dt),
        '${dt.day + 2}'
      ],
      [
        DateFormat('EEE').format(dt.add(Duration(days: 3))),
        DateFormat('MMM').format(dt),
        '${dt.day + 3}'
      ],
      [
        DateFormat('EEE').format(dt.add(Duration(days: 4))),
        DateFormat('MMM').format(dt),
        '${dt.day + 4}'
      ],
      [
        DateFormat('EEE').format(dt.add(Duration(days: 5))),
        DateFormat('MMM').format(dt),
        '${dt.day + 5}'
      ],
      [
        DateFormat('EEE').format(dt.add(Duration(days: 6))),
        DateFormat('MMM').format(dt),
        '${dt.day + 6}'
      ],
      [
        DateFormat('EEE').format(dt.add(Duration(days: 7))),
        DateFormat('MMM').format(dt),
        '${dt.day + 7}'
      ]
    ];
    return Container(
      margin: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      child: Column(children: [
        for (var item in list)
          InkWell(
            onTap: (){},
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.black12, width: 2))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Row(
                      children: [
                        Text('${item[0]} '),
                        Text('${item[1]} '),
                        Text(item[2])
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Row(
                      children: [
                        Text('30/24 °C '),
                        Icon(Icons.sunny_snowing, color: Colors.amberAccent,),
                      ],
                    ),
                  ),
                ]
                ),
            ),
          ),
      ]),
    );
  }
}
