import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_series/Screens/onBoarding/onboardingscreen.dart';
import 'package:whatsapp_series/Widgets/uihelper.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
@override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnBoardingScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset("assets/Images/onelogo.png"),
          SizedBox(
            height: 4,
          ),
          UiHelper.CutomTextField(
              text: "WhatsApp", height: 18, fontweight: FontWeight.bold),
        ]),
      ),
    );
  }
}
