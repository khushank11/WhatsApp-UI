import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_series/Screens/Login/loginscreen.dart';
import 'package:whatsapp_series/Widgets/uihelper.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/Images/boardingscreen.png"),
            SizedBox(height: 20,),
            UiHelper.CutomTextField(text: "Welcome to WhatsApp", height:24,color: Color(0XFF000000)),
            Center(
              child: Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                UiHelper.CutomTextField(text: "Read out", height:14,),
                  UiHelper.CutomTextField(text: " Privacy Policy.", height:14,color:Color(0XFF0C42CC)),
                  UiHelper.CutomTextField(text: "Tap"' Agree and continue', height:14,),
              ],),),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              UiHelper.CutomTextField(text: "to accept the", height:14),
                UiHelper.CutomTextField(text: " Terms of Service.", height:14,color: Color(0XFF0C42CC)),
            ],),


          ],
        ),
      ),
      floatingActionButton:UiHelper.CustomButton(callback: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginScreen()));
      }, buttonname:"Agree and Continue"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

}
