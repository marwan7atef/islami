import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/tabs/radio/radio_widget.dart';

class RadioTap extends StatefulWidget {


  @override
  State<RadioTap> createState() => _RadioTapState();
}

class _RadioTapState extends State<RadioTap> {
  @override
  Widget build(BuildContext context) {
    List<String>radioText=[
      "Radio Ibrahim Al-Akdar",
      "Radio Al-Qaria Yassen",
      "Radio Ahmed Al-trabulsi",
      "Radio Addokali Mohammad Alalim"
    ];
    List<String>recitersText=[
      "Ibrahim Al-Akdar",
      "Akram Alalaqmi",
      "Majed Al-Enezi",
      "Malik shaibat Alhamed"
    ];
    List<String>playIconPath=[
      "playicons",
      "Pause",
          "playicons",
          "playicons"
    ];
    List<String>voiceIconPath=[
      "voiceon"
      ,"voiceoff"
      ,"voiceon"
      ,"voiceon",
    ];
    List<String>backImage=[
      "Mask",
      "Mask",// حاولت احط ال sound wave بس مظهرتش موجوده في assets باسم voice image
      "Mask",
      "Mask"


    ];
    TextTheme textstyle=Theme.of(context).textTheme;
    return DefaultTabController(length: 2,
      child:Padding(
          padding: EdgeInsets.all(20),
          child:
      Container(
        // height: double.infinity,
        // width: double.infinity,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16)
        ,
          image:DecorationImage(fit: BoxFit.cover,image:AssetImage("assets/images/radio_background.png")),



        ),


      child:

      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(

backgroundColor: Colors.transparent,
          bottom: TabBar(
          tabs:[
            Text("Radio",style: textstyle.labelMedium,),
            Text("Reciters",style: textstyle.labelMedium,)


          ] ),

        ),
body:

TabBarView(children: [

ListView.separated(separatorBuilder:(context, index) => SizedBox(
  height: 20,
),
  itemCount:radioText.length ,
    itemBuilder:(context, index) =>Container(margin:index==0?EdgeInsets.only(top: 20):EdgeInsets.zero ,
        child:RadioWidget(radioText[index],playIconPath[index] , voiceIconPath[index],backImage[index]))),
  ListView.separated(separatorBuilder:(context, index) => SizedBox(
    height: 20,
  ),
      itemCount:recitersText.length ,
      itemBuilder:(context, index) =>Container(margin:index==0?EdgeInsets.only(top: 20):EdgeInsets.zero ,
          child:RadioWidget(recitersText[index],playIconPath[index] , voiceIconPath[index],backImage[index]))),



])
)
        ,

      ),
      )

    );
  }
}
