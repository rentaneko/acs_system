import 'package:acs_1/screens/homepage.dart';
import 'package:acs_1/screens/loginCustomer/getOPT.dart';
import 'package:acs_1/screens/register/register.dart';
import 'package:acs_1/styles/acs_colors.dart';
import 'package:acs_1/styles/acs_typhoghraphy.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

class LoginMechanicScreen extends StatefulWidget {
  LoginMechanicScreen({Key? key}) : super(key: key);

  @override
  State<LoginMechanicScreen> createState() => _LoginMechanicScreenState();
}

class _LoginMechanicScreenState extends State<LoginMechanicScreen> {
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
                      'Chào mừng bạn trở lại',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: ACSColors.primary),
                    ),
                  ),
                  Text(
                    'Đăng nhập',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                        color: ACSColors.primary),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 40, 5, 0),
                    child: Text(
                      'Số điện thoại',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: ACSColors.primary),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: TextField(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          labelStyle:
                              TextStyle(color: Color(0xf888888), fontSize: 15)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 20, 5, 0),
                    child: Text(
                      'Mật khẩu',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: ACSColors.primary),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: TextField(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)),
                          labelStyle:
                              TextStyle(color: Color(0xf888888), fontSize: 15)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 90, 0, 0),
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
                          'Đăng nhập',
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
