import 'package:get/get.dart';


// Function to validate input based on type, minimum length, and maximum length
validInput(String val, int min, int max, String type) {
  if (type == "username") {// Check if input type is username
  // Validate username format using GetUtils
    if (!GetUtils.isUsername(val)) {
      return "not valid username";// Return error message if username is not valid
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "not valid email";
    }
  }

  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "not valid phone";
    }
  }

  if (val.isEmpty) {
    return "can't be Empty";
  }
  
// Check if input length is less than minimum length
  if (val.length < min) {
    return "can't be less than $min";// Return error message if input length is less than minimum
  }
  
// Check if input length is greater than maximum length
  if (val.length > max) {
    return "can't be larger than $max";// Return error message if input length is greater than maximum
  }
}