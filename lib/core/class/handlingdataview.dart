
import 'package:os/core/class/statusrequest.dart';
import 'package:os/core/constant/imageasst.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
// Widget to handle different data states and display appropriate UI components
class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget; // Widget to display when statusRequest is not loading or failure
  const HandlingDataView(
      {super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ?   Center(child: Lottie.asset(AppImageAsset.loading , width: 250 , height: 250)) // Display loading animation
        : statusRequest == StatusRequest.offlinefailure
            ? Center(child: Lottie.asset(AppImageAsset.offline , width: 250 , height: 250))// Display offline animation
            : statusRequest == StatusRequest.serverfailure
                ?Center(child: Lottie.asset(AppImageAsset.server , width: 250 , height: 250))// Display server failure animation
                : statusRequest == StatusRequest.failure
                    ? Center(child: Lottie.asset(AppImageAsset.noData , width: 250 , height: 250 , repeat: true  ))// Display no data animation
                    : widget;// Display the provided widget when statusRequest is neither loading nor failure
  }
}
