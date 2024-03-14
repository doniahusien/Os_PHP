import 'package:os/core/constant/apptheme.dart';
import 'package:os/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// LocaleController class manages the app's localization and theme
class LocaleController extends GetxController {
  
   // Selected language
  Locale? language;

  MyServices myServices = Get.find();  // Access MyServices instance using GetX

  ThemeData appTheme = themeEnglish;  // Default app theme


  // Method to change the app's language
  changeLang(String langcode) {
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString("lang", langcode);
    appTheme = langcode == "ar" ? themeArabic : themeEnglish; // Set app theme based on selected language
    Get.changeTheme(appTheme); // Update the app's theme
    Get.updateLocale(locale); // Update the app's locale
  }

  @override
  void onInit() {
        // Retrieve the saved language from SharedPreferences
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    if (sharedPrefLang == "ar") {
      language = const Locale("ar"); // Set language to Arabic if saved language is Arabic
      appTheme = themeArabic;
    } else if (sharedPrefLang == "en") {
      language = const Locale("en");// Set language to English if saved language is English
      appTheme = themeEnglish;
    } else {
      // Set language based on device's locale if no saved language is found
      language = Locale(Get.deviceLocale!.languageCode);
      appTheme = themeEnglish;
    }
    super.onInit();
  }
}