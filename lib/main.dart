import 'package:acs_1/screens/Schedule/registerSchedule.dart';
import 'package:acs_1/screens/Schedule/schedule.dart';
import 'package:acs_1/screens/booking.dart';
import 'package:acs_1/screens/build_nav_bar.dart';
import 'package:acs_1/screens/loginCustomer/login.dart';
import 'package:acs_1/screens/loginMechanic/login.dart';
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
      home: ScheduleScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
