import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import '../widget/part1_signup.dart';
import '../widget/part2_signup.dart';
import '../widget/part3_signup.dart';
import 'login_screen.dart';
import '../widget/input_field.dart';
import '../widget/onboardingbutton.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                height: MediaQuery.of(context).size.height * .15,
                child: const PartOne(),
              ),
          const   PartTwo(),
       const PartThree() ,
              const InputField(
                keyboardType: TextInputType.emailAddress,
                title: 'Email',
                hint: 'Eg. example@gmail.com',
              ),
              InputField(
                keyboardType: TextInputType.phone,
                title: 'Phone Number',
                hint: 'Eg.88841236 ',
                widgetcountry: countrycode,
              ),
              InputField(
                keyboardType: TextInputType.visiblePassword,
                title: 'Password',
                hint: 'Password',
                widget: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.visibility)),
              ),
              const OnBoardingButton(
                widget: LoginScreen(),
                lable: 'Register',
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
                    'Has any account?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Sign in here ',
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
                  'By registering your account , you are agree to our \n terms and condition  ',
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
