import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:os/controller/auth/verifycodesignup_controller.dart';
import 'package:os/core/class/statusrequest.dart';
import 'package:os/core/constant/color.dart';
import 'package:os/view/widget/auth/customtextbodyauth.dart';
import 'package:os/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyCodeSignUp extends StatelessWidget {
  const VerifyCodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerifyCodeSignUpControllerImp());
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
        body: GetBuilder<VerifyCodeSignUpControllerImp>(
          builder: (controller) => 
          controller.statusRequest == StatusRequest .loading?
          Center(child: Text("Loading ..."),):
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: ListView(children: [
              const SizedBox(height: 20),
              const CustomTextTitleAuth(text: "Check code"),
              const SizedBox(height: 10),
              const CustomTextBodyAuth(
                  text: "Please Enter The Digit Code Sent To wael@gmail.com"),
              const SizedBox(height: 15),
              OtpTextField(
                fieldWidth: 50.0,
                borderRadius: BorderRadius.circular(20),
                numberOfFields: 5,
                borderColor: const Color(0xFF512DA8),
                showFieldAsBox: true,
                onCodeChanged: (String code) {
                },
                onSubmit: (String verificationCode) {
                  controller.goToSuccessSignUp(verificationCode);
                },
              ),
              const SizedBox(height: 40),
            ]),
          ),
        ));
  }

  postdata(text, text2, text3, text4) {}
}
