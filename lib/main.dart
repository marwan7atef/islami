import 'package:flutter/material.dart';
import 'package:islami/Home_screen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
void main(){
  runApp(IslamiApp());



}
class IslamiApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),


    );
  }
}
