import 'package:flutter/material.dart';
import 'package:islami/Home_screen.dart';
import 'package:islami/app_them.dart';
import 'package:islami/intro_screen/fourth_screen.dart';

class FifthScreen extends StatelessWidget {
static String routeName="/fifthScreen";

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
            Image.asset("assets/images/lastImageinintro.png"),
            Align(alignment: Alignment.bottomCenter,
                child:
                Text("Holy Quran Radio",style:textStyle.headlineSmall
                )),
            SizedBox(height: 22,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 16),
                child:
                Text("You can listen to the Holy Quran Radio through the application for free and easily",style:textStyle.headlineSmall?.copyWith(fontSize: 20)
                )),
            SizedBox(
              height: 22,
            )
            ,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () => Navigator.pop(context)//Until(context,ModalRoute.withName(FourthScreen.routeName)),
                   , child:
                    Padding(padding: EdgeInsets.only(left: 16,bottom: 16),
                        child:
                        Text("Back",style: TextStyle(color: AppThem.primary),)
                    )
                ),
                Image.asset("assets/images/lastIndicator.png"),
                InkWell(
                    onTap: () =>Navigator.pushNamed(context,HomeScreen.routeName)
                    ,

                    child:
                    Padding(padding: EdgeInsets.only(right: 16,bottom: 16)
                        ,
                        child:
                        Text("Finsh",style: TextStyle(color: AppThem.primary),))
                )


              ],


            )





          ],


        ),


        )






    );

  }
}
