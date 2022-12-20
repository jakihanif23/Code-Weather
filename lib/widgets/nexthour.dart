import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NextHour extends StatelessWidget {
  const NextHour({super.key});

  @override
  Widget build(BuildContext context) {
    var dt = DateTime.now();
    List<String> list = [
      '${dt.hour}',
      '${dt.hour + 1}',
      '${dt.hour + 2}',
      '${dt.hour + 3}',
      '${dt.hour + 4}',
      '${dt.hour + 5}'
    ];
    return Container(
      margin: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      child: Row(children: [
        for (var item in list)
          Expanded(
            child: Column(
              children: [
                Text("${item}.00", style: TextStyle(color: Colors.black45),),
                Icon(Icons.sunny, color: Colors.amberAccent,),
                Text('30 °C')
              ],
            ),
          )
      ]),
    );
  }
}
