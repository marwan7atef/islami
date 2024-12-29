import 'package:flutter/material.dart';
import 'package:islami/Home_screen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:islami/app_them.dart';
import 'package:islami/intro_screen/fifth_screen.dart';
import 'package:islami/intro_screen/first_screen.dart';
import 'package:islami/intro_screen/fourth_screen.dart';
import 'package:islami/intro_screen/introscreen.dart';
import 'package:islami/intro_screen/second_screen.dart';
import 'package:islami/intro_screen/third_screen.dart';
void main(){
  runApp(IslamiApp());



}
class IslamiApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
HomeScreen.routeName:(_)=>HomeScreen(),
        FirstScreen.routeName:(_)=>FirstScreen(),
        SecondScreen.routeName:(_)=>SecondScreen(),
        ThirdScreen.routeName:(_)=>ThirdScreen(),
        FourthScreen.routeName:(_)=>FourthScreen(),
        FifthScreen.routeName:(_)=>FifthScreen(),
      },
initialRoute:FirstScreen.routeName,
theme: AppThem.theme,
darkTheme: AppThem.darTheme,
themeMode:ThemeMode.dark,
    );
  }
}
