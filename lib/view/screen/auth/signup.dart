import 'package:os/controller/auth/signup_controller.dart';
import 'package:os/core/class/statusrequest.dart';
import 'package:os/core/constant/color.dart';
import 'package:os/core/functions/alertexitapp.dart';
import 'package:os/core/functions/vaildinput.dart';
import 'package:os/view/widget/auth/CustomButtonAuth.dart';
import 'package:os/view/widget/auth/customtextbodyauth.dart';
import 'package:os/view/widget/auth/customtextformauth.dart';
import 'package:os/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:os/view/widget/auth/textsignup.dart';


//screen for sign up

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpControllerImplement());// Initialize the sign-up controller using GetX
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('17'.tr,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),


      body: WillPopScope(

        // Alert dialog for confirming exit from the app
          onWillPop: alertExitApp,
          child: GetBuilder<SignUpControllerImplement>(builder:(controller)=>
          controller.statusRequest == StatusRequest.loading?
          // Display a loading indicator if the status request is loading
          Center(child: Text("Loadin..."),)
          :
          // Otherwise, display the sign-up form
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: Form(
              key: controller.formstate,
              child: ListView(children: [
                const SizedBox(height: 20),
                
                CustomTextTitleAuth(text: "10".tr),     // Custom text title widget for displaying "Create an Account"
                const SizedBox(height: 10),
                CustomTextBodyAuth(text: "24".tr),// Custom text body widget for displaying instructions
                const SizedBox(height: 15),

                // Text form input for entering username
                CustomTextFormAuth(
                  isNumber: false,
                  valid: (val) {
                    return validInput(val!, 3, 20, "username");
                  },
                  mycontroller: controller.username,
                  hinttext: "23".tr,
                  iconData: Icons.person_outline,
                  labeltext: "20".tr,
                  // mycontroller: ,
                ),

                // Text form field for entering email
                CustomTextFormAuth(
                  isNumber: false,
                  valid: (val) {
                    return validInput(val!, 3, 40, "email");
                  },
                  mycontroller: controller.email,
                  hinttext: "12".tr,
                  iconData: Icons.email_outlined,
                  labeltext: "18".tr,
                  // mycontroller: ,
                ),

                 // Text form field for entering phone number
                CustomTextFormAuth(
                  isNumber: true,
                  valid: (val) {
                    return validInput(val!, 7, 11, "phone");
                  },
                  mycontroller: controller.phone,
                  hinttext: "22".tr,
                  iconData: Icons.phone_android_outlined,
                  labeltext: "21".tr,
                  // mycontroller: ,
                ),


                // Text form field for entering password
                CustomTextFormAuth(
                  isNumber: false,
                  valid: (val) {
                    return validInput(val!, 3, 30, "password");
                  },
                  mycontroller: controller.password,
                  hinttext: "13".tr,
                  iconData: Icons.lock_outline,
                  labeltext: "19".tr,
                  // mycontroller: ,
                ),


                // Button for signing up
                CustomButtonAuth(
                    text: "17".tr,
                    onPressed: () {
                      controller.signUp(); // Call the sign-up function
                    }),

  
                const SizedBox(height: 40),

                 // Custom text widget for sign-up or sign-in
                CustomTextSignUpOrSigIn(
                  textone: "25".tr,
                  texttwo: "26".tr,
                  onTap: () {
                    controller.goToSingIn(); // Navigate to the sign-in page
                  },
                ),
              ]),
            ),
          )) , )
    );
  }
}