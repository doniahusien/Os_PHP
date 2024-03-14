import 'package:os/core/class/statusrequest.dart';
import 'package:os/core/constant/routes.dart';
import 'package:get/get.dart';
import 'package:os/core/functions/handingdatacontroller.dart';
import 'package:os/data/datasource/remote/auth/verifycodesignup.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  checkCode();
  goToSuccessSignUp(String verifycodessignup);
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  VerifyCodeSignup verifyCodeSignUpData = VerifyCodeSignup(Get.find());

  String? email;
  StatusRequest? statusRequest;

  @override
  checkCode() {}

  @override
  goToSuccessSignUp(verifycodessignup) async {
    statusRequest = StatusRequest.loading;
    update();
    var response =
        await verifyCodeSignUpData.postdata(email!, verifycodessignup);

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.offNamed(AppRoute.successSignUp);
      } else {
        Get.defaultDialog(
            title: "ُWarning",
            middleText: "Phone Number Or Email Already Exists");
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }
}
