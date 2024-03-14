import 'package:os/core/constant/routes.dart';
import 'package:os/view/screen/auth/checkemail.dart';
import 'package:os/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:os/view/screen/auth/login.dart';
import 'package:os/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:os/view/screen/auth/signup.dart';
import 'package:os/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:os/view/screen/auth/success_signup.dart';
import 'package:os/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:os/view/screen/onBoarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.checkemail: (context) => const CheckEmail(),
  AppRoute.login: (context) => const Login(),
  AppRoute.signUp: (context) => const SignUp(),
  AppRoute.forgetPassword: (context) => const ForgetPassword(),
  AppRoute.verfiyCode: (context) => const VerifyCode(),
  AppRoute.resetPassword: (context) => const ResetPassword(),
  AppRoute.successResetpassword: (context) => const SuccessResetPassword(),
  AppRoute.successSignUp: (context) => const SuccessSignUp(),
  AppRoute.onBoarding: (context) => const OnBoarding(),
};
