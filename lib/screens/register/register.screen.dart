import 'package:acs_1/screens/register/register.controller.dart';
import 'package:acs_1/styles/acs_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends GetWidget<RegisterController> {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ACSColors.background,
            body: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SingleChildScrollView(
                child: Form(
                  key: controller.registerFormKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Center(
                        child: SizedBox(
                          width: 200,
                          height: 150,
                          child: Image.asset('assets/images/logo.png'),
                        ),
                      ),
                      const Center(
                        child: Text(
                          'Đăng ký tài khoản',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              color: ACSColors.primary),
                        ),
                      ),
                      const SizedBox(height: 30),
                      // username
                      const Text(
                        'Tên tài khoản',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                            color: ACSColors.primary),
                      ),
                      const SizedBox(height: 12),
                      TextFormField(
                        controller: controller.accountNameController,
                        validator: controller.validatorAccountName,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                        decoration: InputDecoration(
                            hintText: 'Nhập tên tài khoản',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)),
                            labelStyle: const TextStyle(fontSize: 15)),
                      ),

                      const SizedBox(height: 20),
                      // mật khẩu
                      const Text(
                        'Mật khẩu',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                            color: ACSColors.primary),
                      ),
                      const SizedBox(height: 12),
                      TextFormField(
                        controller: controller.passwordController,
                        validator: controller.validatorPassword,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                        decoration: InputDecoration(
                            hintText: 'Nhập mật khẩu',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)),
                            labelStyle: const TextStyle(fontSize: 15)),
                      ),
                      const SizedBox(height: 20),
                      // số điện thoại
                      const Text(
                        'Số điện thoại',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                            color: ACSColors.primary),
                      ),
                      const SizedBox(height: 12),
                      TextFormField(
                        controller: controller.phoneNumberController,
                        validator: controller.validatorPhone,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                        decoration: InputDecoration(
                            hintText: 'Nhập số điện thoại',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)),
                            labelStyle: const TextStyle(fontSize: 15)),
                      ),

                      const SizedBox(height: 20),
                      // họ tên
                      const Text(
                        'Họ và tên',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                            color: ACSColors.primary),
                      ),
                      const SizedBox(height: 12),
                      TextFormField(
                        controller: controller.userNameController,
                        validator: controller.validatorName,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                        decoration: InputDecoration(
                            hintText: 'Nhập họ và tên',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)),
                            labelStyle: const TextStyle(fontSize: 15)),
                      ),
                      // email
                      const SizedBox(height: 20),
                      const Text(
                        'Email',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                            color: ACSColors.primary),
                      ),
                      const SizedBox(height: 12),
                      TextFormField(
                        controller: controller.emailController,
                        validator: controller.validatorEmail,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                        decoration: InputDecoration(
                            hintText: 'Nhập email',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)),
                            labelStyle: const TextStyle(fontSize: 15)),
                      ),
                      const SizedBox(height: 40),
                      SizedBox(
                        width: double.infinity,
                        height: 42,
                        child: Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: ACSColors.primary,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                  ),
                                  minimumSize: const Size(140, 42),
                                ),
                                onPressed: () => Get.back(),
                                child: const Text(
                                  'Trở về',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: ACSColors.primary,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                  minimumSize: const Size(140, 42),
                                ),
                                onPressed: () => controller.register(),
                                child: const Text(
                                  'Đăng ký',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            )));
  }
}
