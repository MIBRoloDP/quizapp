import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'homepage_controller.dart';
import 'login_controller.dart';


class AppBinding extends Bindings{
  @override
  void dependencies(){
   Get.put(loginController());
   Get.put(homepageController());

  }
}