import 'package:flutter/material.dart';
import 'package:get/get.dart';

class loginController extends GetxController {
  //variables and methods yeta rakhney
  var emailController = TextEditingController(
  );
  var passwordController = TextEditingController();
  var isLoading = false.obs;


  void login(){
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if (email.isEmpty || password.isEmpty){
      Get.snackbar("Error", "Email and password cannot be empty");
      return;
    }
    isLoading.value = true;
  }
}