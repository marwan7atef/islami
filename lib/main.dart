import 'package:flutter/material.dart';
import 'package:islami/Home_screen.dart';

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
