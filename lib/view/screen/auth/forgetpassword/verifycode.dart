import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:os/controller/auth/verifycode_controller.dart';
import 'package:os/core/constant/color.dart';
import 'package:os/view/widget/auth/customtextbodyauth.dart';
import 'package:os/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


// Screen for verifying code

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the verify code controller using GetX
    VerifyCodeControllerImp controller =
        Get.put(VerifyCodeControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Verification Code',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),


      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30), // Padding for the body

        // List view for the body content
        child: ListView(children: [
          const SizedBox(height: 20),
          const CustomTextTitleAuth(text: "Check code"),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(
              text:
                  "Please Enter The Digit Code Sent To X@gmail.com"),
          const SizedBox(height: 15),

          // OTP text field widget
            OtpTextField(
                fieldWidth: 50.0,// Width of each field
                borderRadius: BorderRadius.circular(20),// Border radius
                numberOfFields: 5,// Number of OTP fields
                borderColor:const  Color(0xFF512DA8),
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                    // Function to run when every text field is filled
                  controller.goToResetPassword() ; // Navigating to reset password screen
                }, // end onSubmit
              ), 
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}