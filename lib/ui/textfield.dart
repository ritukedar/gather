import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gather/constants/constant.dart';
class TextFieldUI extends StatelessWidget {
  final textController;
  final hintText;
  final labelText;
  Icon prefixIcon;
  Color hintColor;
   TextFieldUI({Key? key, this.textController, this.hintText, this.labelText,required this.prefixIcon,required this.hintColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 31),
      child: TextFormField(
        controller: textController,
        decoration:  InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: Colors.transparent)
          ),
            filled: true,
            fillColor: Colors.blue.shade50,
            // contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 31.0),

            prefixIcon: prefixIcon,
            hintText: hintText,hintStyle: fontstyle(fontWeight: FontWeight.w300,color: hintColor),
        ),
      ),
    );
  }
}
