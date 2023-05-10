import 'package:flutter/material.dart';

import 'onboarding.dart';


class OnBoardingOne extends StatefulWidget {
  const OnBoardingOne({Key? key}) : super(key: key);

  @override
  State<OnBoardingOne> createState() => _OnBoardingOneState();
}

class _OnBoardingOneState extends State<OnBoardingOne> {
  @override
  void initState() {
    navigateToHome();
    super.initState();
  }

  void navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 500), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> OnboardPage()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/splash1.png"),
              fit: BoxFit.fitWidth
            )
          ),
      ),
    );
  }
}
