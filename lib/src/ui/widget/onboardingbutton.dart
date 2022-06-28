import 'package:flutter/material.dart';

class OnBoardingButton extends StatelessWidget {
  final double circular;
  final Color colorbutton;
  final String lable;
  final Widget widget;

  const OnBoardingButton({
    Key? key,
    required this.circular,
    required this.colorbutton,
    required this.lable,
   required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(circular),
      ),
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(circular),
        child: ElevatedButton(
          clipBehavior: Clip.hardEdge,
          style: ElevatedButton.styleFrom(primary: colorbutton),
          onPressed: () {
           Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => widget));
          },
          child: Text(
            lable,
            style: const TextStyle(fontSize: 20, wordSpacing: 3),
          ),
        ),
      ),
    );
  }
}
