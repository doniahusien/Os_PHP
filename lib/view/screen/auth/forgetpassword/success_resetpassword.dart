import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:os/controller/auth/successresetpassword_controller.dart';
import 'package:os/core/constant/color.dart';
import 'package:os/view/widget/auth/CustomButtonAuth.dart';


// Screen for success message after resetting password

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
   Widget build(BuildContext context) {
    SuccessResetPasswordControllerImp controller =
    // Initialize the success reset password controller using GetX
        Get.put(SuccessResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Success',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),

      body: Container(
        padding: const EdgeInsets.all(15),// Padding for the body
        child: Column(children: [
           // Centered icon widget for success
          const Center(
              child: Icon(
            Icons.check_circle_outline,// Check circle icon
            size: 200,
            color: AppColor.primaryColor,// Icon color
          )),

            // Text widget for success message
          Text("37".tr,// Translation for success message
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(fontSize: 30)),

         // Text widget for additional message
          Text("36".tr),

          const Spacer(),// Spacer widget to push button to bottom
          SizedBox(
            width: double.infinity,

            // Custom button widget for navigating to login page
            child: CustomButtonAuth(
                text: "31".tr,
                onPressed: () {
                  controller.goToPageLogin();// Function to navigate to login page
                }),
          ),
        ]),
      ),
    );
  }
}