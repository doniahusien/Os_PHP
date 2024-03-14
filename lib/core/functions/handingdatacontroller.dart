
import 'package:os/core/class/statusrequest.dart';


// Function to handle response data
handlingData(response){
  // Check if the response is already a StatusRequest object
  if (response is StatusRequest){
   return response ; 
  }else {
    // Return a success status if the response is not a StatusRequest object
   return StatusRequest.success ; 
  }
}