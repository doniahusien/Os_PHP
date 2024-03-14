import 'package:flutter/material.dart';
import '../../../core/constant/color.dart';
//اول صفحه هتختاري البرنامج عربي ولا انجليزي


class CustomButtonLang extends StatelessWidget {
  final String textbutton;
  final void Function()? onPressed;
  const CustomButtonLang({super.key, required this.textbutton, this.onPressed});

  @override
  //widget for language selection
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity, // Full width of the container
      child: MaterialButton(//widget for button
        color: AppColor.primaryColor,
        textColor: Colors.white,
        onPressed: onPressed,
        child: Text(// Text widget for button label
          textbutton,
          style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
