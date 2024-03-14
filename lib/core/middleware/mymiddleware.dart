import 'package:os/core/constant/routes.dart';
import 'package:os/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// class is responsible for handling route redirection
class MyMiddleWare extends GetMiddleware {
  @override
  // Priority of the middleware
  int? get priority => 1;

  MyServices myServices = Get.find() ; 

// Redirect method to determine where to redirect based on conditions
  @override
    // Check if onboarding is completed
  RouteSettings? redirect(String? route) {
     if(myServices.sharedPreferences.getString("onboarding") == "1"){
            // Redirect to login route if onboarding is completed
            //مش كل مره افتح البرنامج يفتح صفحات  onboarding
      return const RouteSettings(name: AppRoute.login) ; 
     }
  }
}