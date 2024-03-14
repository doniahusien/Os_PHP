import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:os/core/constant/color.dart';
import 'package:os/view/widget/auth/CustomButtonAuth.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Success',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          const Center(
              child: Icon(
            Icons.check_circle_outline,
            size: 200,
            color: AppColor.primaryColor,
          )),
          Text("" , style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 30)),
          Text(""),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: CustomButtonAuth(
                text:"Go to Login ",
                onPressed: () {
                  // controller.signUp();
                }),
          ),
          SizedBox(height: 30)
        ]),
      ),
    );
  }
}