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
    if (value == null ||
        value.isEmpty ||
        value.length < 10 ||
        value.length > 40) {
      return 'Tên tài khoản không hợp lệ !';
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
