import 'package:acs_1/@share/router/pages.dart';
import 'package:acs_1/@share/utils/util.dart';
import 'package:acs_1/repository/models/Profile.dart';
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
  final accountNameController = TextEditingController();

  String? validatorPhone(String? value) {
    String pattern = r'^(?:[+0]9)?[0-9]{10}$';
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return 'Số điện thoại không hợp lệ !';
    }
    return null;
  }

  String? validatorPassword(String? value) {
    if (value == null ||
        value.isEmpty ||
        value.length < 8 ||
        value.length > 12) {
      return 'Mật khẩu phải có ít nhất từ 8 đến 12 ký tự !';
    }
    return null;
  }

  String? validatorName(String? value) {
    if (value == null ||
        value.isEmpty ||
        value.length < 10 ||
        value.length > 40) {
      return 'Tên của bạn không hợp lệ !';
    }
    return null;
  }

  String? validatorAccountName(String? value) {
    if (value == null ||
        value.isEmpty ||
        value.length < 10 ||
        value.length > 40) {
      return 'Tên tài khoản không hợp lệ !';
    }
    return null;
  }

  String? validatorEmail(String? value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return 'Định dạng email không hợp lệ !';
    }
    return null;
  }

  Future<void> register() async {
    if (registerFormKey.currentState?.validate() == true) {
      showLoading();
      var profile = Profile(
          fullName: userNameController.text,
          email: emailController.text,
          address: "HCM - Tan Binh",
          phone: phoneNumberController.text,
          username: accountNameController.text,
          password: passwordController.text);
      var res = await _userRepo.register(profile: profile);
      if (res) {
        goToAndRemoveAll(screen: ROUTER_LOGIN);
        showSnackBar(title: "", content: "Đăng kí thành công");
      } else {
        showSnackBar(title: "Error", content: "Register fail");
      }
      hideLoading();
    }
  }

  @override
  void onClose() {
    super.onClose();
  }
}
