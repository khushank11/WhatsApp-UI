import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_series/Widgets/uihelper.dart';

class OTPScreen extends StatelessWidget {
  String phonenumber;
  OTPScreen({required this.phonenumber});
  TextEditingController otpcontroller1 = TextEditingController();
  TextEditingController otpcontroller2 = TextEditingController();
  TextEditingController otpcontroller3 = TextEditingController();
  TextEditingController otpcontroller4 = TextEditingController();
  TextEditingController otpcontroller5 = TextEditingController();
  TextEditingController otpcontroller6 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            UiHelper.CutomTextField(
                text: "Verifying your Number",
                height: 20,
                color: Color(0XFF00A884),
                fontweight: FontWeight.bold),
            SizedBox(
              height: 30,
            ),
            UiHelper.CutomTextField(
                text: "You ve tried to registor +91${phonenumber}", height: 15),
            UiHelper.CutomTextField(
                text: "recently. Wait before requesting an sms or a call",
                height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CutomTextField(text: "with your code.", height: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: UiHelper.CutomTextField(
                    text: "Wrong number?",
                    height: 15,
                    color: Color(0XFF00A884),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomContainer(otpcontroller1),
                SizedBox(width: 10,),
                UiHelper.CustomContainer(otpcontroller2),
                SizedBox(width: 10,),
                UiHelper.CustomContainer(otpcontroller3),
                SizedBox(width: 10,),
                UiHelper.CustomContainer(otpcontroller4),
                SizedBox(width: 10,),
                UiHelper.CustomContainer(otpcontroller5),
                SizedBox(width: 10,),
                UiHelper.CustomContainer(otpcontroller6),
              ],
            ),
            SizedBox(height: 30,),
            UiHelper.CutomTextField(text: "Didn't receive code?", height:14,color: Color(0XFF00A884)),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(callback: (){}, buttonname:"NEXT"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
