import 'package:flutter/material.dart';
import 'package:islami/intro_screen/fourth_screen.dart';
import 'package:islami/intro_screen/introscreen.dart';
import 'package:islami/intro_screen/second_screen.dart';

class ThirdScreen extends StatelessWidget {
 static String routeName="/thirdScrren";

  @override
  Widget build(BuildContext context) {
    return IntroScreen(isFirstScreen: false, nextScreen: FourthScreen.routeName, guidanceText: "Reading the Quran", extraGuidanceText: "Read, and your Lord is the Most Generous", indicatorPhoto: "fourthindicator", mainPhoto: "fourthImage");
  }
}
