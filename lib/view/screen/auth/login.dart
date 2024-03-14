import 'package:os/controller/auth/login_controller.dart';
import 'package:os/core/constant/color.dart';
import 'package:os/view/widget/auth/CustomButtonAuth.dart';
import 'package:os/view/widget/auth/customtextbodyauth.dart';
import 'package:os/view/widget/auth/customtextformauth.dart';
import 'package:os/view/widget/auth/customtexttitleauth.dart';
import 'package:os/view/widget/auth/logoauth.dart';
import 'package:os/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImplement controller = Get.put(LoginControllerImplement());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Sign In',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const LogoAuth(),
          const SizedBox(height: 20),
          const CustomTextTitleAuth(text: "Welcome Back"),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(
              text:
                  "Sign In With Your Email And Password OR Continue With Social Media"),
          const SizedBox(height: 15),
          CustomTextFormAuth(
            mycontroller: controller.email,
            hinttext: "Enter Your Email",
            iconData: Icons.email_outlined,
            labeltext: "Email",
            // mycontroller: ,
          ),
          CustomTextFormAuth(
            mycontroller: controller.password,
            hinttext: "Enter Your Password",
            iconData: Icons.lock_outline,
            labeltext: "Password",
            // mycontroller: ,
          ),
          InkWell(
            onTap: () {
              controller.goToForgetPassword();
            },
            child: const Text(
              "Forget Password",
              textAlign: TextAlign.end,
            ),
          ),
          CustomButtonAuth(text: "Sign In", onPressed: () {}),
          const SizedBox(height: 30),
          CustomTextSignUpOrSigIn(
            textone: "Don't have an account ? ",
            texttwo: "SignUp",
            onTap: () {
              controller.goToSignUp();
            },
          )
        ]),
      ),
    );
  }
}
