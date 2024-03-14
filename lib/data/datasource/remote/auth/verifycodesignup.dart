import 'package:os/core/class/crud.dart';
import 'package:os/linkapi.dart';

class VerifyCodeSignup {
  Crud crud;
  VerifyCodeSignup (this.crud);
  postdata(String email, String verifycode) async {
    var response = await crud.postData(AppLink.verifyCodeSignUp, {
      "email": email,
      "verifycode": verifycode,
    });
    return response.fold((l) => l, (r) => r);
  }
}
