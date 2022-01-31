import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gather/Screens/registration.dart';
import 'package:gather/constants/constant.dart';
import 'package:gather/ui/button.dart';
import 'package:gather/ui/textfield.dart';


class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController Email = TextEditingController();

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient:  LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [

                colorLightBlue,
                Color(0xff282D6C),

              ],
            )),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){Navigator.pop(context);}, icon:Icon(CupertinoIcons.back,color: Colors.white,),
                  ),
                  Text("Forgot Password",style: fontstyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),

                  Container(width: 50,)
                ],
              ),
              SizedBox(
                height: heightMore,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 60),
                child: Text(
                  "Enter your email and will send \nyour instructiona on how to reset it",
                  textAlign: TextAlign.center,
                  style: fontstyle(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500)),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              TextFieldUI(
                textController: Email,
                hintColor: Colors.black45,
                prefixIcon: const Icon(
                  Icons.email_outlined,
                  color: Colors.white,
                ),
                hintText: "Email",
              ),
              SizedBox(
                height: 150,
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationScreen()));
                  },
                  
                    child: MyButton(text: "Send", btnColor: Colors.white, textColor: colorBlue,),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
