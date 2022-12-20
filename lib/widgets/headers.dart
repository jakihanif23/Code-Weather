import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../fonts/custom_icons_icons.dart';

class Headers extends StatelessWidget {
  final String name;
  const Headers({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 3,
          child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {},
                child: const Icon(
                  CustomIcons.search,
                  size: 25,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 280,
                child: Text(
                  name,
                  style: TextStyle(fontSize: 25),
                  overflow: TextOverflow.clip,
                  softWrap: false,
                  maxLines: 1,
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            InkWell(
              onTap: () {},
              child: const Icon(CustomIcons.sliders, size: 30),
            ),
            const SizedBox(
              width: 10,
            )
          ],
        )
      ],
    );
  }
}
