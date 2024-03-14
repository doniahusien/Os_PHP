import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:os/core/constant/routes.dart';
import 'package:os/core/middleware/mymiddleware.dart';
import 'package:os/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:os/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:os/view/screen/auth/login.dart';
import 'package:os/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:os/view/screen/auth/signup.dart';
import 'package:os/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:os/view/screen/auth/success_signup.dart';
import 'package:os/view/screen/auth/verifycodesignup.dart';
import 'package:os/view/screen/language.dart';
import 'package:os/view/screen/onBoarding.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const Language() , middlewares: [
    MyMiddleWare()
  ]),
  // GetPage(name: "/", page: () => TestView()),

  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => const VerifyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(name: AppRoute.successResetpassword, page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),
GetPage(
      name: AppRoute.verfiyCodeSignUp, page: () => const VerifyCodeSignUp()),
];