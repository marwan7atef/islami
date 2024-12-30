import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/app_them.dart';
import 'package:islami/intro_screen/first_screen.dart';

class IntroScreen extends StatelessWidget {

  bool isFirstScreen;
  String nextScreen;
  //String backScreen;
  String mainPhoto;
  String guidanceText;
  String extraGuidanceText;
  String indicatorPhoto;
  IntroScreen({required this.isFirstScreen,required this.nextScreen,required this.guidanceText,required this.extraGuidanceText,required this.indicatorPhoto,required this.mainPhoto});

  @override
  Widget build(BuildContext context) {
    TextTheme textStyle = Theme.of(context).textTheme;
    return Scaffold(
      body: 
      SafeArea(child: 

      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
children: [
  Image.asset("assets/images/header.png"),
        Image.asset("assets/images/${mainPhoto}.png"),
  Align(alignment: Alignment.bottomCenter,
      child:
  Text("$guidanceText",style:textStyle.headlineSmall
)),
  Spacer(flex: 1,),
  Padding(padding: EdgeInsets.symmetric(horizontal: 16),
      child:
  Text("$extraGuidanceText",style:textStyle.headlineSmall?.copyWith(fontSize: 20)
)),
 Spacer(flex: 1,)
  ,

  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      isFirstScreen?Text(""):
      InkWell(
        onTap: () => Navigator.pop(context)//Until(context,ModalRoute.withName(backScreen)),
        ,child:
Padding(padding: EdgeInsets.only(left: 16,bottom: 16),
      child:
      Text("Back",style: TextStyle(color: AppThem.primary),)
    )
      ),
      Image.asset("assets/images/${indicatorPhoto}.png"),
      InkWell(
        onTap: () =>Navigator.pushNamed(context,nextScreen)
          ,

          child:
          Padding(padding: EdgeInsets.only(right: 16,bottom: 16)
,
          child:
          Text("Next",style: TextStyle(color: AppThem.primary),))
      )


    ],


  )


  
  
  
],


      ),


      )

    );
  }
}
