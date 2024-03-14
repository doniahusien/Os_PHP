
import 'dart:io';

checkInternet() async {
  try {
    var result = await InternetAddress.lookup("google.com");
    // Check if the result is not empty and the raw address is not empty
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      return true;// Return true if the result indicates successful internet connectivity
    }
  }on SocketException catch (_) {
    return false; // Return false if an exception occurs (no internet connectivity)
  }
}
