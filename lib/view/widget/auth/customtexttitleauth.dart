import 'package:flutter/material.dart';

class CustomTextTitleAuth extends StatelessWidget {
  final String text;
  const CustomTextTitleAuth({super.key, required this.text});
// معموله لل text بس 
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,// Center alignment for the text
      style: Theme.of(context).textTheme.headline2,// Text style defined by the theme's headline2 
    );
  }
}
