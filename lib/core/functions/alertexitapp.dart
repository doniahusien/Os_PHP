import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:os/core/constant/color.dart';

// Function to show exit confirmation dialog
Future<bool> alertExitApp() {
  Get.defaultDialog(
      title: "تنبيه",
      titleStyle:const  TextStyle(color: AppColor.primaryColor , fontWeight: FontWeight.bold),
      middleText: "هل تريد الخروج من التطبيق",
      actions: [
        ElevatedButton(// Confirm button
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(AppColor.primaryColor)),
            onPressed: () {
              exit(0); // Exit the app when confirmed
            },
            child:const Text("تاكيد")),
        ElevatedButton(// Cancel button
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(AppColor.primaryColor)),
            onPressed: () {
              Get.back(); // Dismiss the dialog when canceled
            },
            child:const Text("الغاء")) // Button text
      ]);
  return Future.value(true);
}