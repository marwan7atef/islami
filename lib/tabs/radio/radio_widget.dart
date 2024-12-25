import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RadioWidget extends StatelessWidget {
String startedText;
String playIconPath;
String voiceIconPath;
String backImage;
RadioWidget(this.startedText,this.playIconPath,this.voiceIconPath,this.backImage);

  @override
  Widget build(BuildContext context) {
    TextTheme textStyle=Theme.of(context).textTheme;
    return
    Stack(
        alignment: Alignment.bottomCenter,
        children: [
      Container(
        padding: EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        color: Color(0xffE2BE7F),
        borderRadius: BorderRadius.circular(20)
        
        
      ),

      child:


Column(
  children: [
    SizedBox(height: 10,),
Text("$startedText",style: textStyle.titleLarge,),
 SizedBox(height: 20,),
 Row(
   mainAxisAlignment: MainAxisAlignment.center,
   children: [
SvgPicture.asset("assets/icons/${playIconPath}.svg")
     ,SizedBox(
       width: 15,

     ),
      SvgPicture.asset("assets/icons/${voiceIconPath}.svg"),
     
     

   ],


 ),
SizedBox(height:10 ,)

  ],

)

      ,

    ),
      Image.asset("assets/images/${backImage}.png")

    ]


    );
  }
}
