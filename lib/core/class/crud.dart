import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:os/core/class/statusrequest.dart';
import 'package:os/core/functions/checkinternet.dart';
import 'package:http/http.dart' as http;

class Crud {
   // Method to perform a POST request and handle responses
  Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
  
  
      // Checking internet connectivity
      if (await checkInternet()) {
        var response = await http.post(Uri.parse(linkurl), body: data);
          print(response.statusCode) ; 

// Handling successful response
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responsebody = jsonDecode(response.body); // Decoding JSON response body
          return Right(responsebody);
        } else {
          return const Left(StatusRequest.serverfailure);
        }
      } else {
        return const Left(StatusRequest.offlinefailure);
      }
     
  }
}