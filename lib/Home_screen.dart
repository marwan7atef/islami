import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/tabs/Quran/quran.dart';
import 'package:islami/tabs/hadeth/hadeth.dart';
import 'package:islami/tabs/radio/radio.dart';
import 'package:islami/tabs/sebha/sebha.dart';
import 'package:islami/tabs/time/time.dart';

class HomeScreen extends StatefulWidget {
  static String routeName="/home";
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currenttap=0;
  List<Widget>taps=[
    QuranTap(),
    HadethTap(),
    SebhaTap(),
    RadioTap(),
    TimeTap(),



  ];
  List<String>background=[
    "quran_background.png",
    "hadeth_background.png",
    "sebha_background.png",
    "radio_background.png",
    "time_background.png"

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width: double.infinity,
          decoration:BoxDecoration(image:DecorationImage(
             fit: BoxFit.cover ,image: AssetImage("assets/images/${background[currenttap]}"))) ,
          child:  SafeArea(child:Column(children: [
        Image.asset("assets/images/header.png")
        ,
        Expanded(child:
        taps[currenttap]
        )
      ],))),
      bottomNavigationBar: BottomNavigationBar(
      currentIndex: currenttap,
      onTap: (value) =>setState(() {
         currenttap=value;
      })
      ,items:[
        BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/quran.svg"),
        activeIcon: SvgPicture.asset("assets/icons/quran.svg",colorFilter:ColorFilter.mode(Colors.white, BlendMode.srcIn) ,),
        label: "Quran"

        ),  BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/hadith.svg"),
            activeIcon: SvgPicture.asset("assets/icons/hadith.svg",colorFilter:ColorFilter.mode(Colors.white, BlendMode.srcIn) ,),
        label: "Hadeth"

        ), BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/sebha.svg"),
            activeIcon: SvgPicture.asset("assets/icons/sebha.svg",colorFilter:ColorFilter.mode(Colors.white, BlendMode.srcIn) ,),
        label: "Sebha"

        ), BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/radio.svg"),
            activeIcon: SvgPicture.asset("assets/icons/radio.svg",colorFilter:ColorFilter.mode(Colors.white, BlendMode.srcIn) ,),
        label: "Radio"

        ), BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/time.svg"),
            activeIcon: SvgPicture.asset("assets/icons/time.svg",colorFilter:ColorFilter.mode(Colors.white, BlendMode.srcIn) ,),
        label: "Time"

        ),



      ]) ,


    );
  }
}
