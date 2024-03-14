import 'package:os/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:os/core/localization/changelocal.dart';
import '../widget/language/custombuttonlang.dart';


// screen for selecting app language.
class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text widget displaying localized text for language selection
            Text("1".tr, // Getting translation for "1" key
            style: Theme.of(context).textTheme.headline1),
            const SizedBox(
              height: 20,
            ),


             // Button for selecting English language
            CustomButtonLang(
              textbutton: "En",// Text displayed on the button
              onPressed: () {
                controller.changeLang("en");// Change app language to English
                Get.toNamed(AppRoute.onBoarding);  // Navigate to the onboarding screen
              },
            ),


              // Button for selecting Arabic language
            CustomButtonLang(
              textbutton: "Ar",// Text displayed on the button
              onPressed: () {
                controller.changeLang("ar"); // Change app language to Arabic
                Get.toNamed(AppRoute.onBoarding);   // Navigate to the onboarding screen
              },
            ),
          ],
        ),
      ),
    );
  }
}
