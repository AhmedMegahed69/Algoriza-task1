import 'package:flutter/material.dart';
import 'package:task1/src/ui/pages/login_screen.dart';


class PartOne extends StatelessWidget {
  const PartOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
                  children: [
                    Image.asset(
                      'assets/images/log.png',
                      width: double.infinity,
                      fit: BoxFit.fitWidth,
                    ),
                    Align(
                      alignment: const Alignment(-.9, 0),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.black),
                        child: IconButton(
                            color: Colors.white,
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                            },
                            icon: const Icon(Icons.arrow_back)),
                      ),
                    )
                  ],
                );
  }
}
