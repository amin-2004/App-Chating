import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  var emailController = TextEditingController();
  var passoredController = TextEditingController();

String ? valideteEmail (String? value){
  if (value == null || value.trim().isEmpty){
    return 'Email is reqired';
    
  }
  return null ;
}


}