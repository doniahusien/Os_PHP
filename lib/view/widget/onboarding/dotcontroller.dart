import 'package:os/controller/onboarding_controller.dart';
import 'package:os/core/constant/color.dart';
import 'package:os/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
      //widget to display dots horizontally(used in slider)
        builder:(controller)=>Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Generate a list of dots based on the number of onboarding pages (3)
            ...List.generate(
                onBoardingList.length,//number of onboarding pages
                    (index) => AnimatedContainer(// AnimatedContainer for each dot
                  margin: const EdgeInsets.only(right: 5),// Margin between dots
                  duration: const Duration(milliseconds: 900),// Duration for the animation
                  width: controller.currentPage == index ? 20 : 5,// Width of the dot (active=20 or inactive=5)
                  height: 6,
                  decoration: BoxDecoration(// Decoration for the dot
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(10)), // Border radius for the dot
                ))
          ],
        ));
  }
}

