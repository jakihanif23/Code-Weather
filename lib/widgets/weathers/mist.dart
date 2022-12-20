import 'package:codeweather/fonts/custom_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Mist extends StatelessWidget {
  const Mist({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
      CustomIcons.mist,
      color: Colors.grey,
      size: 60,
    );
  }
}
