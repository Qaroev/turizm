import 'dart:async';
import 'package:flutter/material.dart';

import 'onboarding-two.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({Key? key}) : super(key: key);

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> with SingleTickerProviderStateMixin {
   bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        _isVisible = true;
      });
    });
    Future.delayed(const Duration(milliseconds: 3000), () {
      setState(() {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (BuildContext context) => const OnBoardingTwo()));
      });
    });
  }

  @override
  void didChangeDependencies() {
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isVisible = false;
      });
    });
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1000),
            curve: Curves.easeInOut,
            right: 0,
            left: _isVisible ? 0 : -MediaQuery.of(context).size.width,
            bottom: _isVisible ? -5 : -MediaQuery.of(context).size.height,
            child: Image.asset('assets/images/bottom.png', fit: BoxFit.cover,),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1000),
            curve: Curves.easeInOut,
            left: _isVisible ? 0 : MediaQuery.of(context).size.width,
            right: _isVisible ? 0 : -MediaQuery.of(context).size.height,
            child: Center(child: Image.asset('assets/images/splash.png', height: 77,)),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1000),
            curve: Curves.easeInOut,
            left: 0,
            right: _isVisible ? 0 : -MediaQuery.of(context).size.width,
            top: _isVisible ? -5 : -MediaQuery.of(context).size.height,
            child: Image.asset('assets/images/top.png', fit: BoxFit.cover, height: 400,),
          ),
        ],
      ),
    );
  }

}
