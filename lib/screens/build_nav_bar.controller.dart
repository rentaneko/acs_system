import 'package:acs_1/@share/router/pages.dart';
import 'package:acs_1/@share/utils/util.dart';
import 'package:acs_1/screens/profile/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../repository/models/Profile.dart';
import '../repository/storage/data.storage.dart';
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

  Profile? prof = Profile.fromJson(Get.find<DataStorage>().getToken());

  @override
  void onReady() {
    super.onReady();
  }

  selectIndex(int index) => _selectedIndex.value = index;

  getScreen() => _screenList[_selectedIndex.value];

  signOut() {
    Get.find<DataStorage>().setToken(null);
    goToAndRemoveAll(screen: ROUTER_LOGIN);
  }

}