import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SebhaTap extends StatefulWidget {
  @override
  State<SebhaTap> createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTap> {

  double turn=0.0;
int count=0;
late int controlCount=count;
void setCountZero(){
  if (controlCount==99) {
    controlCount = 0;
  }
}
  @override
  Widget build(BuildContext context) {
    TextTheme textStyle =Theme.of(context).textTheme;
    return Column(
      children: [
        Text("سَبِّحِ اسْمَ رَبِّكَ الأعلى",style:
          TextStyle(
            color: Colors.white,
            fontSize: 36,
            fontWeight: FontWeight.bold
          )
          ,),
        Image.asset("assets/images/headofsebha.png"),
        InkWell(
onTap: () {
  turn+=0.02;
  ++count;
  ++controlCount;
  setCountZero();
setState(() {

});
},
          child:
        Stack(
        alignment: Alignment.center
        ,
          children: [
            AnimatedRotation(turns: turn, duration: Duration(seconds:1 ),

            child:
            Image.asset("assets/images/bodyofsebha.png")),

          Column(
            children: [
              controlCount<33?Text("سبحان الله",style: textStyle.displaySmall):controlCount<66?Text("الحمد لله",style: textStyle.displaySmall):Text("الله اكبر",style: textStyle.displaySmall),
              SizedBox(
                height: 10,
              ),
           Text("$count",style:textStyle.displaySmall)
              
              
            ],
          )

          ],

        )
        )

      ],

    );
  }
}
