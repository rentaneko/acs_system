import 'package:acs_1/repository/models/Profile.dart';
import 'package:acs_1/repository/storage/data.storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../@share/utils/util.dart';
import '../../repository/repo/user.repo.dart';
import '../build_nav_bar.dart';

class LoginController extends GetxController {
  final _userRepo = Get.find<UserRepo>();
  final _dataStorage = Get.find<DataStorage>();
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  final loginFormKey = GlobalKey<FormState>();

  @override
  void onReady() {
    if(_dataStorage.getToken() != null){
      Get.to(() => const BuildBottomNavBar());
    }
    super.onReady();
  }

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
    if (loginFormKey.currentState?.validate() == true) {
      showLoading();
      await _userRepo
          .login(
              username: userNameController.text,
              password: passwordController.text)
          .then((value) => {handlerLogin(value)});
    }
  }

  handlerLogin(Profile? value) {
    if (value != null) {
      _dataStorage.setToken(value);
      Get.to(() => const BuildBottomNavBar());
    } else {
      showSnackBar(title: "Error", content: "Login fail");
    }
    hideLoading();
  }

  @override
  void onClose() {
    userNameController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
