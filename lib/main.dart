import 'package:acs_1/controller/controller_binding.dart';
import 'package:acs_1/screens/booking/booking.dart';
import 'package:acs_1/screens/build_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ControllerBinding(),
      home: const BuildBottomNavBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
