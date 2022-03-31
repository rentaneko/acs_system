import 'package:acs_1/styles/acs_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ACSColors.background,
            body: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SingleChildScrollView(
                reverse: true,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 150,
                      alignment: Alignment.center,
                      child: Image.asset('assets/images/logo.png'),
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
                    // số điện thoại
                    const Text(
                      'Số điện thoại',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                          color: ACSColors.primary),
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      height: 40,
                      child: TextFormField(
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)),
                            labelStyle: const TextStyle(fontSize: 15)),
                      ),
                    ),
                    // mật khẩu
                    const SizedBox(height: 20),
                    const Text(
                      'Mật khẩu',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                          color: ACSColors.primary),
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      height: 40,
                      child: TextFormField(
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)),
                            labelStyle: const TextStyle(fontSize: 15)),
                      ),
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
                    SizedBox(
                      height: 40,
                      child: TextFormField(
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)),
                            labelStyle: const TextStyle(fontSize: 15)),
                      ),
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
                    SizedBox(
                      height: 40,
                      child: TextFormField(
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)),
                            labelStyle: const TextStyle(fontSize: 15)),
                      ),
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
                              onPressed: onSendClicked,
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
                  ],
                ),
              ),
            )));
  }

  void onSendClicked() {}
}
