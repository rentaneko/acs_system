import 'package:acs_1/@share/utils/util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../repository/repo/user.repo.dart';
import '../build_nav_bar.dart';

class LoginController extends GetxController {
  final _userRepo = Get.find<UserRepo>();
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final loginFormKey = GlobalKey<FormState>();

  String? validator(String? value) {
    String pattern = r'^(?:[+0]9)?[0-9]{10}$';
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return 'Phone number is invalidate !';
    }
    return null;
  }

  Future<void> login() async {
    /*if (loginFormKey.currentState?.validate() == true) {
      showLoading();
      await _userRepo
          .login(
              username: userNameController.text,
              password: passwordController.text)
          .then((value) => {
                if (value != null)
                  Get.to(() => const BuildBottomNavBar())
                else
                  showSnackBar(title: "Error", content: "Login fail"),
                hideLoading()
              });
    }*/
    Get.to(() => const BuildBottomNavBar());
  }

  @override
  void onClose() {
    userNameController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
