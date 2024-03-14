import 'package:os/controller/auth/forgetpassword_controller.dart'; // Importing the forget password controller
import 'package:os/core/constant/color.dart'; // Importing color constants
import 'package:os/core/functions/vaildinput.dart'; // Importing function for input validation
import 'package:os/view/widget/auth/CustomButtonAuth.dart'; // Importing custom button widget
import 'package:os/view/widget/auth/customtextbodyauth.dart'; // Importing custom text body widget
import 'package:os/view/widget/auth/customtextformauth.dart'; // Importing custom text form widget
import 'package:os/view/widget/auth/customtexttitleauth.dart'; // Importing custom text title widget
import 'package:flutter/material.dart'; // Importing material package
import 'package:get/get.dart'; // Importing GetX library

// Screen for forgetting password
class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key});

  @override
  Widget build(BuildContext context) {
    // Initialize the forget password controller using GetX
    ForgetPasswordControllerImp controller = Get.put(ForgetPasswordControllerImp());

    // Scaffold widget for the screen
    return Scaffold(
      // App bar widget
      appBar: AppBar(
        // Title alignment
        centerTitle: true,
        // Background color
        backgroundColor: AppColor.backgroundcolor,
        // Elevation
        elevation: 0.0,
        // Title text
        title: Text(
          '14'.tr, // Translation for title text
          style: Theme.of(context).textTheme.headline1!.copyWith(color: AppColor.grey), // Styling for the title
        ),
      ),
      // Body widget
      body: Container(
        // Padding for the body
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        // Form widget for input validation
        child: Form(
          key: controller.formstate, // Form key
          // List view for the body content
          child: ListView(
            children: [
              const SizedBox(height: 20), // Spacing
              CustomTextTitleAuth(text: "27".tr), // Custom text title widget
              const SizedBox(height: 10), // Spacing
              CustomTextBodyAuth(
                // Custom text body widget with translation
                text: "29".tr, // Translation for body text
              ),
              const SizedBox(height: 15), // Spacing
              // Custom text form widget for email input
              CustomTextFormAuth(
                isNumber: false, // Email is not numeric
                valid: (val) {
                  // Validation function for email input
                  return validInput(val!, 5, 100, "email"); // Validation check for email input
                },
                mycontroller: controller.email, // Controller for email input
                hinttext: "12".tr, // Translation for hint text
                iconData: Icons.email_outlined, // Email icon for email input
                labeltext: "18".tr, // Translation for label text
              ),
              // Custom button widget for submitting forget password request
              CustomButtonAuth(
                text: "30".tr, // Translation for button text
                onPressed: () {
                  controller.goToVerfiyCode(); // Function to navigate to verification code screen
                },
              ),
              const SizedBox(height: 40), // Spacing
            ],
          ),
        ),
      ),
    );
  }
}