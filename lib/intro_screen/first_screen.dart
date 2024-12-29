import 'package:flutter/material.dart';
import 'package:islami/intro_screen/introscreen.dart';
import 'package:islami/intro_screen/second_screen.dart';

class FirstScreen extends StatelessWidget {

static String routeName='/firstscreen';
  @override
  Widget build(BuildContext context) {
    return IntroScreen(isFirstScreen: true, nextScreen: SecondScreen.routeName,guidanceText: "Welcome To Islmi App",extraGuidanceText: "", indicatorPhoto: "firstindicator", mainPhoto: "welcomeintroscreen");
  }
}
