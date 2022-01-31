
import 'package:flutter/material.dart';
import 'package:gather/constants/constant.dart';

class MyButton extends StatelessWidget {
  MyButton({Key? key,
    required this.text,required this.btnColor,required this.textColor
  }) : super(key: key);
  String text;
  Color btnColor;
  Color textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
        vertical: 20, horizontal: paddingHorizontal),
    child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color:btnColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child:Center(child:
        Text(text, style: fontstyle(fontSize: 18,color: textColor,fontWeight: FontWeight.w600),))
    ));
  }
}

