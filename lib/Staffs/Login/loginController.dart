import 'package:cloudi5techonologyattendanceapp/Staffs/BottomNav/finalview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Logincontroller extends GetxController {
  final formKey1 = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  bool rememberMe = false;

  void submit() {
    if (formKey1.currentContext != null && formKey1.currentState!.validate()) {
      Get.to(const FinalView());
    } else {
      Get.snackbar("Valitator", "Enter the vaild details");
    }
  }
}
