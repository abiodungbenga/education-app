import 'dart:async';

import 'package:flutter/material.dart';

import '../onboarding/onboarding_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late Timer _timer;

  @override
  void initState() {
    // TODO: implement initState
    _timer = Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingPage()),
      );

      /// what do you want to do when the 3 seconds elapse from your splash screen
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          "Learning App",
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
