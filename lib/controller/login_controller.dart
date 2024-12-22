import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController nationalIdController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isCheck = false;

  login() {}

  checkBox(value) {
    isCheck = value;
    update();
  }

  @override
  void onClose() {
    nationalIdController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
