import 'package:os/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTextSignUpOrSigIn extends StatelessWidget {
  const CustomTextSignUpOrSigIn(
      {super.key, required this.texttwo, required this.textone,required this.onTap});
  final String textone;
  final String texttwo;
  final void Function()onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textone),
        InkWell(
          onTap: onTap,
          child: Text(texttwo,
              style: TextStyle(
                  color: AppColor.primaryColor, fontWeight: FontWeight.bold)),
        )
      ],
    );
  }
}
