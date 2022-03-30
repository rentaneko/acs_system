import 'package:acs_1/screens/homepage.dart';
import 'package:acs_1/styles/acs_colors.dart';
import 'package:acs_1/styles/acs_typhoghraphy.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

class GetOPTScreen extends StatefulWidget {
  GetOPTScreen({Key? key}) : super(key: key);

  @override
  State<GetOPTScreen> createState() => _GetOPTScreenState();
}

class _GetOPTScreenState extends State<GetOPTScreen> {
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
                    padding: EdgeInsets.fromLTRB(5, 20, 5, 50),
                    child: Center(
                      child: Text(
                        'Mã xác thực được gửi đến',
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontSize: 24, color: ACSColors.primary),
                      ),
                    ),
                  ),
                  Text(
                    '0123456789',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, color: ACSColors.primary),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 50, 5, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child: Container(
                            alignment: Alignment.center,
                            width: 45,
                            height: 45,
                            child: TextField(
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  hintText: '-',
                                  labelStyle: TextStyle(
                                      color: Color(0xf888888), fontSize: 15)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child: Container(
                            alignment: Alignment.center,
                            width: 45,
                            height: 45,
                            child: TextField(
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  hintText: '-',
                                  labelStyle: TextStyle(
                                      color: Color(0xf888888), fontSize: 15)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child: Container(
                            alignment: Alignment.center,
                            width: 45,
                            height: 45,
                            child: TextField(
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  hintText: '-',
                                  labelStyle: TextStyle(
                                      color: Color(0xf888888), fontSize: 15)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child: Container(
                            alignment: Alignment.center,
                            width: 45,
                            height: 45,
                            child: TextField(
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  hintText: '-',
                                  labelStyle: TextStyle(
                                      color: Color(0xf888888), fontSize: 15)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child: Container(
                            alignment: Alignment.center,
                            width: 45,
                            height: 45,
                            child: TextField(
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  hintText: '-',
                                  labelStyle: TextStyle(
                                      color: Color(0xf888888), fontSize: 15)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child: Container(
                            alignment: Alignment.center,
                            width: 45,
                            height: 45,
                            child: TextField(
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  hintText: '-',
                                  labelStyle: TextStyle(
                                      color: Color(0xf888888), fontSize: 15)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 168, 0, 0),
                    child: TextButton(
                        onPressed: onPressReSend,
                        child: Text('Gửi lại mã xác thực')),
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
    Get.to(() => HomeScreen());
  }

  void onPressReSend() {}
}
