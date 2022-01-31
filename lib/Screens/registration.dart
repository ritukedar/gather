import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gather/constants/constant.dart';
import 'package:gather/ui/button.dart';
import 'package:gather/ui/textfield.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io' as Io;


class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController password = TextEditingController();
  TextEditingController confpassword = TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController Name = TextEditingController();
  var path = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30)
              ),
            ),
            TextFieldUI(
              hintColor: colorDarkBlue,
              textController: Name,
              prefixIcon:  Icon(
                Icons.person,
                color:colorDarkBlue,
              ),
              hintText: "Name",
            ),
            TextFieldUI(
              hintColor: colorDarkBlue,

              textController: Email,
              prefixIcon: const Icon(
                Icons.email_outlined,
                color: Colors.white,
              ),
              hintText: "Email",
            ),
            TextFieldUI(
              hintColor: colorDarkBlue,

              textController: password,
              prefixIcon: const Icon(
                Icons.lock_outline,
                color: Colors.white,
              ),
              hintText: "Password",
            ),

            TextFieldUI(
              hintColor: colorDarkBlue,

              textController: confpassword,
              prefixIcon: const Icon(
                Icons.lock_outline,
                color: Colors.white,
              ),
              hintText: "Confirm Password",
            ),
            SizedBox(
              height: heightMore,
            ),
            GestureDetector(
              onTap: () {},
              child: MyButton(
                text: "Register",
                btnColor: colorLightBlue,
                textColor: Colors.white,
              ),
            ),
            SizedBox(
              height: heightMore,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already Have Account?",style: fontstyle(color: Colors.lightBlue),),
                GestureDetector(onTap: (){
                  Navigator.pop(context);
                },child: Text("Login",style: fontstyle(color: colorDarkBlue,fontWeight: FontWeight.bold,fontSize: 16),)),
              ],
            )

          ],
        ),
      ),
    );
  }
}

