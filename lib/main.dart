import 'package:flutter/material.dart';
import 'package:islami/Home_screen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:islami/app_them.dart';
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

      },
initialRoute:HomeScreen.routeName,
theme: AppThem.theme,
darkTheme: AppThem.darTheme,
themeMode:ThemeMode.dark,
    );
  }
}
