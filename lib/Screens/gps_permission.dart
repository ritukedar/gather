import 'package:flutter/material.dart';
import 'package:gather/Screens/bottom_navigation.dart';
import 'package:gather/constants/constant.dart';
import 'package:gather/ui/button.dart';
class Gps_Permission extends StatelessWidget {
  const Gps_Permission({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Padding(
             padding:  EdgeInsets.all(paddingHorizontal),
             child: Text("Hi Jeet\nWelcome to \nGathrr!",style: fontstyle(color:Colors.blue,fontSize: 40,fontWeight: FontWeight.bold),),
           ),

            Padding(
              padding:  EdgeInsets.all(paddingHorizontal),
              child: Text("PLease turn on your GPS to find\nout better events suggestions\nnear you",style: fontstyle(color:Colors.blue,fontSize: 20,fontWeight: FontWeight.w400),),
            ),

            Padding(
              padding:  EdgeInsets.symmetric(vertical: paddingHorizontal),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigation()));

                },
                child: MyButton(
                  text: "Turn On GPS",
                  btnColor: colorLightBlue,
                  textColor: Colors.white,
                ),
              ),
            ),
          ],
        ),

    );
  }
}
