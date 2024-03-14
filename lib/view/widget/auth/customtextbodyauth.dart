import 'package:flutter/material.dart';

// displaying body text in authentication screens

class CustomTextBodyAuth extends StatelessWidget {
  final String text; // The text to be displayed
  const CustomTextBodyAuth({super.key, required this.text});  // Constructor for CustomTextBodyAuth

  @override
   Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Text(
        text,    // The text content (dynamic)
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyText2,// Style of the text, using the bodyText2 style from the theme
      ),
    );
  }
}