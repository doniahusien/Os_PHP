import 'package:flutter/material.dart';

// form widget for authentication

class CustomTextFormAuth extends StatelessWidget {
  final String hinttext;// Hint text for the text form field
  final String labeltext;// Label text for the text form field
  final IconData iconData;// Icon data 
  final TextEditingController? mycontroller;// Controller for the text form field
  final String? Function(String?) valid;// Validation function for the text form field
  final bool isNumber;// is input is numeric
  final bool? obscureText;// make input text hide like password
  final void Function()? onTapIcon;  // Callback function for tap event on the icon


 // Constructor for CustomTextFormAuth
  const CustomTextFormAuth(
      {Key? key,
      this.obscureText,
      this.onTapIcon,
      required this.hinttext,
      required this.labeltext,
      required this.iconData,
      required this.mycontroller,
      required this.valid,
      required this.isNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        // Define keyboard type based on isNumber flag
        keyboardType: isNumber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        validator: valid,// Validation function for the text form field
        controller: mycontroller,
          // Determine whether the input text should be obscured
        obscureText: obscureText == null || obscureText == false  ? false : true,
        decoration: InputDecoration(
          // Hint text displayed when the field is empty
            hintText: hinttext,
            hintStyle: const TextStyle(fontSize: 14),
            floatingLabelBehavior: FloatingLabelBehavior.always,// Behavior for the floating label
            contentPadding:// Padding around the content
                const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            label: Container(
                margin: const EdgeInsets.symmetric(horizontal: 9),
                child: Text(labeltext)),
            // Icon displayed at the end of the input field
            suffixIcon: InkWell(child: Icon(iconData), onTap: onTapIcon),
            border:
            // Border for the input
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}