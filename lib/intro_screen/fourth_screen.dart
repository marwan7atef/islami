import 'package:flutter/material.dart';
import 'package:islami/intro_screen/fifth_screen.dart';
import 'package:islami/intro_screen/introscreen.dart';
import 'package:islami/intro_screen/third_screen.dart';

class FourthScreen extends StatelessWidget {
  static String routeName="fourthScreen";

  @override
  Widget build(BuildContext context) {
    return IntroScreen(isFirstScreen: false, nextScreen: FifthScreen.routeName, guidanceText:"Bearish", extraGuidanceText: "Praise the name of your Lord, the Most High", indicatorPhoto: "fifthindicator", mainPhoto: "fifthImage");
  }
}
