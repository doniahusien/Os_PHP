import 'package:os/controller/auth/resetpassword_controller.dart';
import 'package:os/core/constant/color.dart';
import 'package:os/core/functions/vaildinput.dart';
import 'package:os/view/widget/auth/CustomButtonAuth.dart';
import 'package:os/view/widget/auth/customtextbodyauth.dart';
import 'package:os/view/widget/auth/customtextformauth.dart';
import 'package:os/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Screen for resetting password
class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
   Widget build(BuildContext context) {
     // Initialize the reset password controller using GetX
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('ResetPassword',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),

         // Form widget for input validation
        child: Form(
          key: controller.formstate,
          // List view for the body content
          child: ListView(children: [
            const SizedBox(height: 20),
            CustomTextTitleAuth(text: "35".tr),// Custom text title widget
            const SizedBox(height: 10),
            CustomTextBodyAuth(text: "35".tr), // Custom text body widget
            const SizedBox(height: 15),

              // Custom text form widget for password input
            CustomTextFormAuth(
              isNumber: false , // Password is not numeric
              valid: (val) {
                return validInput(val!, 3, 40, "password"); // Validation check for password input
              },
              mycontroller: controller.password,
              hinttext: "13".tr,// Translation for hint text
              iconData: Icons.lock_outline,// Lock icon for password input
              labeltext: "19".tr,// Translation for label text
              // mycontroller: ,
            ),

   // Custom text form widget for password confirmation input
            CustomTextFormAuth(
              isNumber: false ,
              valid: (val) {
                return validInput(val!, 3, 40, "password");
              },
              mycontroller: controller.password,
              hinttext: "Re" + " " + "13".tr,
              iconData: Icons.lock_outline,
              labeltext: "19".tr,
              // mycontroller: ,
            ),

            // Custom button widget for submitting password reset request
            CustomButtonAuth(
                text: "33".tr,// Translation for button text
                onPressed: () {
                  controller.goToSuccessResetPassword();// Function to navigate to success reset password screen
                }),
            const SizedBox(height: 40),
          ]),
        ),
      ),
    );
  }
}