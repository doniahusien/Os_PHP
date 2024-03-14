import 'package:os/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


abstract class ResetPasswordController extends GetxController {
  resetpassword();
 goToSuccessResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController password;
  late TextEditingController repassword;


  @override
  goToSuccessResetPassword() {
    Get.offNamed(AppRoute.successResetpassword);
  }

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
  
  @override
  resetpassword() {
 
  }
}
