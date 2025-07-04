import 'package:flutter/material.dart';
import 'package:get/get.dart';

class homepageController extends GetxController {
  //variables and methods yeta rakhney
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var isLoading = false.obs;

  void login(){

      Get.snackbar("PLAY QUIZ", "WELCOME");
      return;

  }
}