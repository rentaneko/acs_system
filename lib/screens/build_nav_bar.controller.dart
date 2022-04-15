import 'package:acs_1/screens/profile/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'appointment/appointment.dart';
import 'history/history.dart';
import 'homepage/homepage.dart';

class NavBarController extends GetxController {

  var _selectedIndex = 0.obs;

  final List<Widget> _screenList = [
    HomeScreen(),
    AppointmentScreen(),
    HistoryScreen(),
    ProfileScreen()
  ];

  @override
  void onReady() {
    super.onReady();
  }

  selectIndex(int index) => _selectedIndex.value = index;

  getScreen() => _screenList[_selectedIndex.value];

}