import 'package:os/core/constant/color.dart';
import 'package:flutter/material.dart';
// button widget for authentication screens.
//once be Sign up and once log in



  // Constructor for CustomButtonAuth
class CustomButtonAuth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomButtonAuth({super.key, required this.text, this.onPressed});

  @override
    Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(top: 10),
      child: MaterialButton(
        // Define button shape
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding:const EdgeInsets.symmetric(vertical: 13),// Padding around the button content
        onPressed: onPressed,
        color: AppColor.primaryColor,
        textColor: Colors.white,

        // Text content of the button
        child: Text(text , style:const TextStyle(fontWeight: FontWeight.bold , fontSize: 16)),
      ),
    );
  }
}