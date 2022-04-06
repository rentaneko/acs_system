import 'package:acs_1/controller/controller_binding.dart';
import 'package:acs_1/screens/booking/booking.dart';
import 'package:acs_1/screens/build_nav_bar.dart';
import 'package:acs_1/screens/login/login.screen.dart';
import 'package:acs_1/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '@share/router/pages.dart';
import '@share/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (_, child) => FlutterEasyLoading(child: child),
      initialRoute: ROUTER_LOGIN,
      getPages: Routers.route,
      debugShowCheckedModeBanner: false,
    );
  }
}
