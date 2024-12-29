import 'package:flutter/material.dart';
import 'package:islami/intro_screen/first_screen.dart';
import 'package:islami/intro_screen/introscreen.dart';
import 'package:islami/intro_screen/third_screen.dart';

class SecondScreen extends StatelessWidget {
  static String routeName="/secondScreen";

  @override
  Widget build(BuildContext context) {
    return IntroScreen(isFirstScreen: false, nextScreen: ThirdScreen.routeName, guidanceText:"Welcome To Islami",extraGuidanceText: "We Are Very Excited To Have You In Our  \t\t Community", indicatorPhoto: "secondindicator", mainPhoto: "2mainphoto");
  }
}
