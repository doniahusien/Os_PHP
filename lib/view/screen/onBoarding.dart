import 'package:os/controller/onboarding_controller.dart';
import 'package:os/core/constant/color.dart';
import 'package:os/view/widget/onboarding/custombutton.dart';
import 'package:os/view/widget/onboarding/customslider.dart';
import 'package:os/view/widget/onboarding/dotcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';


class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
   Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp()) ; // Initialize the onboarding controller using GetX
    return Scaffold(
        backgroundColor: AppColor.backgroundcolor,
        body: SafeArea(
          child: Column(
            children: [

            // Slider(image also in widget) section for onboarding content
            const Expanded(
              flex: 4,
              child: CustomSliderOnBoarding(),
            ),



            // Bottom section with dot controller and button
            Expanded(
                flex: 1,
                child: Column(
                  children: const [
                    CustomDotControllerOnBoarding(),
                    Spacer(flex: 2),
                    CustomButtonOnBoarding()
                  ],
                ))
          ]),
        ));
  }
}