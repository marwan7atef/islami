import 'dart:ui';

import 'package:flutter/material.dart';

class AppThem {
  static const Color primary=Color(0xffE2BE7F);
  static const Color whiteColor=Color(0xffFFFFFF);
  static const Color blackColor=Color(0xff202020);
  static ThemeData theme =ThemeData(


  );
  static  ThemeData darTheme =ThemeData(
bottomNavigationBarTheme:
      BottomNavigationBarThemeData(
        type:BottomNavigationBarType.fixed,
        backgroundColor: primary,
        showUnselectedLabels: false,
        showSelectedLabels: true,
        selectedItemColor: whiteColor

        ),
textTheme: const TextTheme(
      displaySmall:TextStyle(
        fontWeight: FontWeight.bold,
        color: whiteColor

      ),
  labelMedium:TextStyle(
    fontWeight: FontWeight.bold,
    color: whiteColor


  ),
  titleLarge: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: blackColor

  )
    ,
  headlineSmall: TextStyle(
    color: primary,
    fontWeight: FontWeight.bold

  )
  )
,
    tabBarTheme:TabBarTheme(

        indicatorSize:TabBarIndicatorSize.tab,
      labelPadding: EdgeInsets.all(6),

      indicator: BoxDecoration(
        color: primary,
        borderRadius: BorderRadius.circular(8)
        
      )
      
      
    )
,
    scaffoldBackgroundColor: blackColor
      );




}