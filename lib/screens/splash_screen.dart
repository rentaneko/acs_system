import 'package:acs_1/controller/basic_controller.dart';
import 'package:acs_1/screens/build_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_indicator/loading_indicator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        //Get.to(() => const BuildBottomNavBar());
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 3.5,
          width: MediaQuery.of(context).size.width / 4.5,
          child: const LoadingIndicator(
            indicatorType: Indicator.ballRotate,
            colors: [Colors.red, Colors.yellow, Colors.green],
            backgroundColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
