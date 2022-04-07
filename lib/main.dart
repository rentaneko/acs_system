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
      initialRoute: ROUTER_BOOKING,
      getPages: Routers.route,
      debugShowCheckedModeBanner: false,
    );
  }
}
