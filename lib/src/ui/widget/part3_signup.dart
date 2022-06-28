import 'package:flutter/material.dart';

class PartThree extends StatelessWidget {
  const PartThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return       Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text(
                      'Register',
                      style: TextStyle(fontSize: 40, fontFamily: 'Cairo'),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(right: 20),
                          child: Row(
                            children: [
                              const Text(
                                'Help',
                                style: TextStyle(color: Colors.blue),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  left: 4,
                                ),
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.blue),
                                child: const Icon(
                                  Icons.question_mark,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ],
              );
  }
}