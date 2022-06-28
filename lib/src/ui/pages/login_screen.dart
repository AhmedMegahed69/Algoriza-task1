import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'signup_screen.dart';
import '../widget/input_field.dart';
import '../widget/onboardingbutton.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget countrycode = CountryCodePicker(
    initialSelection: 'EG',
    showFlag: false,
    showDropDownButton: true,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .20,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/log.png',
                      width: double.infinity,
                      fit: BoxFit.fitWidth,
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(
                  top: 25,
                  left: 15,
                ),
                child: const Text(
                  'Welcom to Fashion Daily',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text(
                      'Sign in',
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
              ),
              InputField(
                keyboardType: TextInputType.phone,
                title: 'Phone Number',
                hint: 'Eg.88841236 ',
                widgetcountry: countrycode,
              ),
              const OnBoardingButton(
                widget: SignUpScreen(),
                lable: 'Sign in',
                circular: 10,
                colorbutton: Colors.blue,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    color: Colors.grey,
                    height: .3,
                    width: 100,
                  ),
                  const Text(' Or'),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    color: Colors.grey,
                    height: .3,
                    width: 100,
                  ),
                ],
              ),
              Container(
                  margin: const EdgeInsets.all(10),
                  width: double.infinity,
                  child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.email),
                      label: const Text('Sign with by google'))),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Doesn\'t has any account?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Register here ',
                        style:
                            TextStyle(fontFamily: 'Cairo', color: Colors.blue),
                      ))
                ],
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Use the application according to policy rules. Any \n kinds of violation will be subject to sanction  ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
