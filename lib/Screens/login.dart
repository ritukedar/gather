import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gather/Screens/forgot_password.dart';
import 'package:gather/Screens/gps_permission.dart';
import 'package:gather/Screens/registration.dart';
import 'package:gather/constants/constant.dart';
import 'package:gather/ui/button.dart';
import 'package:gather/ui/textfield.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController password = TextEditingController();
    TextEditingController Email = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: heightLess,
              ),
              ListTile(
                title: Image.asset(
                  "assets/images/gather_icon.png",
                  fit: BoxFit.fitHeight,
                  color:                  Colors.blue,

                  height: 80,
                ),
                subtitle: Image.asset(
                  "assets/images/gathrr.png",
                  height: 80,
                  fit: BoxFit.fitHeight,
                  color:                  Colors.blue,

                ),
              ),
              SizedBox(
                height: heightMore,
              ),
              TextFieldUI(
                hintColor: Colors.blue,
                textController: Email,
                prefixIcon: const Icon(
                  Icons.email_outlined,
                  color: Colors.white,
                ),
                hintText: "Email",
              ),
              TextFieldUI(
                hintColor: Colors.blue,
                textController: password,
                prefixIcon: const Icon(
                  Icons.lock_outline,
                  color: Colors.white,
                ),
                hintText: "Password",
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 0, horizontal: paddingHorizontal),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPassword()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot Password?",
                        textAlign: TextAlign.right,
                        style: GoogleFonts.josefinSans(
                            textStyle: TextStyle(
                                color: Colors.blue,
                                fontSize: textMaxFontSize,
                                fontWeight: FontWeight.w500)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: heightMore,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Gps_Permission()));
                },
                child: MyButton(
                  text: "Login",
                  btnColor: colorLightBlue,
                  textColor: Colors.white,
                ),
              ),
              SizedBox(
                height: heightLess,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't Have Account?",style: fontstyle(color: Colors.lightBlue),),
                  GestureDetector(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationScreen()));
                  },child: Text("Register",style: fontstyle(color: colorDarkBlue,fontWeight: FontWeight.bold,fontSize: 16),)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
