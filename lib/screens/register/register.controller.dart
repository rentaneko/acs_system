import 'package:acs_1/@share/router/pages.dart';
import 'package:acs_1/@share/utils/util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../repository/repo/user.repo.dart';

class RegisterController extends GetxController {
  final _userRepo = Get.find<UserRepo>();
  final phoneNumberController = TextEditingController();
  final userNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final registerFormKey = GlobalKey<FormState>();

  String? validatorPhone(String? value) {
    String pattern = r'^(?:[+0]9)?[0-9]{10}$';
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return 'Phone number is invalidate !';
    }
    return null;
  }

  String? validatorPassword(String? value) {
    if (value == null ||
        value.isEmpty ||
        value.length < 8 ||
        value.length > 12) {
      return 'Password is invalidate !';
    }
    return null;
  }

  String? validatorName(String? value) {
    if (value == null ||
        value.isEmpty ||
        value.length < 10 ||
        value.length > 40) {
      return 'Name is invalidate !';
    }
    return null;
  }

  String? validatorEmail(String? value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return 'Email is invalidate !';
    }
    return null;
  }

  Future<void> register() async {
    if (registerFormKey.currentState?.validate() == true) {
      var res = await _userRepo.register(
          username: userNameController.text,
          password: passwordController.text,
          phone: phoneNumberController.text,
          email: emailController.text);
      if (res != null) {
        goToAndRemoveAll(screen: ROUTER_REGISTER);
      } else {
        showSnackBar(title: "Error", content: "Register fail");
      }
    }
  }

  @override
  void onClose() {
    userNameController.dispose();
    passwordController.dispose();
    phoneNumberController.dispose();
    emailController.dispose();
    super.onClose();
  }
}
