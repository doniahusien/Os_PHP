
import 'package:os/controller/auth/checkemail_controller.dart';
import 'package:os/core/constant/color.dart';
import 'package:os/view/widget/auth/CustomButtonAuth.dart';
import 'package:os/view/widget/auth/customtextbodyauth.dart';
import 'package:os/view/widget/auth/customtextformauth.dart';
import 'package:os/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({super.key});

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImp controller = Get.put(CheckEmailControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Check Email',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
          const CustomTextTitleAuth(text: "Success SignUp"),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(
              text:
                  "Please Enter Your Email Address to Recive verification code"),
          const SizedBox(height: 15),
          CustomTextFormAuth(
            mycontroller: controller.email,
            hinttext: "Enter Your Email",
            iconData: Icons.email_outlined,
            labeltext: "Email",
            // mycontroller: ,
          ),
          CustomButtonAuth(
              text: " Check",
              onPressed: () {
                controller.goToSuccessSignUp();
              }),
          const SizedBox(height: 30),
        ]),
      ),
    );
  }
}
