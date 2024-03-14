import 'package:os/controller/onboarding_controller.dart'; // Importing OnBoardingController
import 'package:os/core/constant/color.dart'; // Importing color constants
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';// GetX state manager package مش فاهمه لازمتها ايه اصلا

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({super.key});
  @override
  // widget to the button ("continue")
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      height: 40,
      child: MaterialButton(
        textColor: Colors.white,// Text color of the button
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
        onPressed: () {
          //Call 'next' function from the controller 
          // عشان لما تضغط علي continue الصفحه تتغير
          controller.next();
        },
        color: AppColor.primaryColor,
        child: const Text(
          "Continue",
        ),
      ),
    );
  }
}
