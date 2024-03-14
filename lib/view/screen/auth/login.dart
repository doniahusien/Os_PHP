import 'package:os/controller/auth/login_controller.dart';
import 'package:os/core/constant/color.dart';
import 'package:os/core/functions/alertexitapp.dart';
import 'package:os/core/functions/vaildinput.dart';
import 'package:os/view/widget/auth/CustomButtonAuth.dart';
import 'package:os/view/widget/auth/customtextbodyauth.dart';
import 'package:os/view/widget/auth/customtextformauth.dart';
import 'package:os/view/widget/auth/customtexttitleauth.dart';
import 'package:os/view/widget/auth/logoauth.dart';
import 'package:os/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


// Screen for user login


class Login extends StatelessWidget {
  const Login({super.key});

  @override
 Widget build(BuildContext context) {
  // Initialize the login controller using GetX
    LoginControllerImplement controller = Get.put(LoginControllerImplement());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Sign In',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: WillPopScope(

        // Alert dialog for confirming exit from the app
          onWillPop: alertExitApp,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: Form(
              key: controller.formstate,// Form state key
              child: ListView(children: [
                const LogoAuth(),// Logo widget
                const SizedBox(height: 20),
                CustomTextTitleAuth(text: "10".tr),// Custom text title widget with translation
                const SizedBox(height: 10),
                CustomTextBodyAuth(text: "11".tr),// Custom text body widget with translation
                const SizedBox(height: 15),


                // Text form field for entering email
                CustomTextFormAuth(
                  isNumber: false,
                  valid: (val) {
                    return validInput(val!, 5, 100, "email");// Validation function for email
                  },
                  mycontroller: controller.email,// Controller for email field
                  hinttext: "12".tr,// Hint text for email
                  iconData: Icons.email_outlined,// Icon for email
                  labeltext: "18".tr,// Label text for email
                ),



                GetBuilder<LoginControllerImplement>(
                  builder: (controller) => CustomTextFormAuth(
                    obscureText: controller.isshowpassword,    // Text form field for entering password
                    onTapIcon: () {
                      controller.showPassword();// Function to toggle password visibility
                    },
                    isNumber: false,
                    valid: (val) {
                      return validInput(val!, 5, 30, "password");// Validation function for password
                    },
                    mycontroller: controller.password, // Controller for password field
                    hinttext: "13".tr, // Hint text for password field
                    iconData: Icons.lock_outline,// Icon for password
                    labeltext: "19".tr,// Label text for password field
                  ),
                ),


                 // Widget for "Forgot Password?" text
                InkWell(
                  onTap: () {
                    controller.goToForgetPassword();// Function to navigate to forgot password screen
                  },
                  child: Text(
                    "14".tr,// Translation for "Forgot Password?" text
                    textAlign: TextAlign.right,
                  ),
                ),


                // Button for login
                CustomButtonAuth(
                    text: "15".tr,// Translation for button text
                    onPressed: () {
                      controller.login();// Function to perform login
                    }),


                const SizedBox(height: 40),


              // Widget for "Don't have an account? Sign Up" text
                CustomTextSignUpOrSigIn(
                  textone: "16".tr,// Translation for "Don't have an account?" text
                  texttwo: "17".tr, // Translation for "Sign Up" text
                  onTap: () {
                    controller.goToSignUp();// Function to navigate to sign up screen
                  },
                )
              ]),
            ),
          )),
    );
  }
}