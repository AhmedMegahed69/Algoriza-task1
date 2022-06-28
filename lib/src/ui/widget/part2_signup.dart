

import 'package:flutter/material.dart';

class PartTwo extends StatelessWidget {
  const PartTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(
                  top: 25,
                  left: 15,
                ),
                child: const Text(
                  'Welcom to Fashion Daily',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              );
  }
}
