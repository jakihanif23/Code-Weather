import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class Sunny extends StatelessWidget {
  const Sunny({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.wb_sunny_rounded,
      color: Colors.amberAccent,
      size: 60,
    );
  }
}
