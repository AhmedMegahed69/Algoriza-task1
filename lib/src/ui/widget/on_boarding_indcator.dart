import 'package:flutter/material.dart';


class Indicator extends StatelessWidget {
  final int index;
  @override
  const Indicator(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildercontainer(index == 0
            ? const Color.fromARGB(255, 141, 235, 34)
            : const Color.fromARGB(255, 175, 170, 177)),
        buildercontainer(index == 1
            ? const Color.fromARGB(255, 141, 235, 34)
            : const Color.fromARGB(255, 191, 189, 192)),
        buildercontainer(index == 2
            ? const Color.fromARGB(255, 141, 235, 34)
            : const Color.fromARGB(255, 188, 185, 189)),
      ],
    );
  }

  Container buildercontainer(Color color) {
    return Container(
      margin: const EdgeInsets.all(3),
      width: 16,
      height: 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: color,
      ),
    );
  }
}
