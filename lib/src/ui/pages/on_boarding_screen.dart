import 'package:flutter/material.dart';
import 'package:task1/onboarding_model.dart';
import 'login_screen.dart';
import 'signup_screen.dart';
import '../widget/on_boarding_indcator.dart';
import '../widget/onboardingbutton.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageController = PageController();
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: PageView.builder(
                controller: pageController,
                onPageChanged: (index) {
                  setState(() {
                    currentindex = index;
                  });
                },
                itemCount: onboardinglist.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    Image.asset(onboardinglist[index].image!, fit: BoxFit.fill),
                    Text(
                      onboardinglist[index].title.toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        onboardinglist[index].discreption!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          height: 1.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: const Alignment(.9, -1),
              child: Container(
                margin: const EdgeInsets.only(top: 3),
                padding: const EdgeInsets.all(2),
                height: 30,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(70),
                  child: MaterialButton(
                    height: 20,
                    onPressed: () {
                      if (currentindex < 2) {
                        currentindex++;
                        pageController.animateToPage(currentindex,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.linear);
                      }
                    },
                    color: const Color.fromARGB(255, 140, 206, 17),
                    child: const Text('skip'),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0, 0.6),
              child: Indicator(currentindex),
            ),
            const Align(
              alignment: Alignment(0, 0.8),
              child: OnBoardingButton(
                widget: LoginScreen(),
                circular: 30,
                colorbutton: Color.fromARGB(255, 140, 206, 17),
                lable: 'Get Started',
              ),
            ),
            Align(
              alignment: const Alignment(0, 0.95),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SignUpScreen()));
                      },
                      child: const Text(
                        'SignUp',
                        style: TextStyle(
                            fontFamily: 'Cairo',
                            color: Color.fromARGB(255, 140, 206, 17)),
                      ))
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
