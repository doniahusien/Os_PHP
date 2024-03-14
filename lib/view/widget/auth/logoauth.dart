import 'package:os/core/constant/imageasst.dart'; 
import 'package:flutter/material.dart';

// displaying logo in authentication screens

class LogoAuth extends StatelessWidget {
  const LogoAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(//// CircleAvatar widget for creating a circular avatar
        radius: 70,
        backgroundColor: Colors.red,
        child: Padding(
          padding: const EdgeInsets.all(0), // Border radius
          child: ClipOval(//clipping child in oval shape (making it circular)
            child: Image.asset(//for loading image from asset مش شغاله
              AppImageAsset.logo,// Image asset constant for the logo دي الصوره
            ),
          ),
        ));
  }
}