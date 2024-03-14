import 'package:os/core/constant/color.dart';
import 'package:flutter/material.dart';

// CustomTextSignUpOrSigIn widget for displaying text with clickable part


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
         // InkWell widget for the second part of the text to make it clickable
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
