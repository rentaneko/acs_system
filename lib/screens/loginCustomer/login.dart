import 'package:acs_1/screens/homepage.dart';
import 'package:acs_1/screens/loginCustomer/getOPT.dart';
import 'package:acs_1/screens/register/register.dart';
import 'package:acs_1/styles/acs_colors.dart';
import 'package:acs_1/styles/acs_typhoghraphy.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ACSColors.background,
            body: Container(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
              constraints: BoxConstraints.expand(),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                      ),
                      child: Image.asset(
                        'assets/images/logo1.png',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 20, 5, 40),
                    child: Text(
                      'Xin chào\nthành viên của ACS',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 36,
                          color: ACSColors.primary),
                    ),
                  ),
                  Text(
                    'Hãy nhập số điện thoại của bạn',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: ACSColors.primary),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 20, 5, 0),
                    child: TextField(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          hintText: 'Số điện thoại',
                          labelStyle:
                              TextStyle(color: Color(0xf888888), fontSize: 15)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 147, 5, 0),
                    child: TextButton(
                        onPressed: onRegisterClick,
                        child: Text('Tạo tài khoản')),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 46,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: ACSColors.primary,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                        ),
                        onPressed: onSendClicked,
                        child: Text(
                          'Gửi mã',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }

  void onSendClicked() {
    Get.to(() => GetOPTScreen());
  }

  void onRegisterClick() {
    Get.to(() => RegisterScreen());
  }
}
