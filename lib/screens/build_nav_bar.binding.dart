import 'package:acs_1/repository/repo/service.repo.dart';
import 'package:acs_1/screens/appointment/appointment.controller.dart';
import 'package:acs_1/screens/build_nav_bar.controller.dart';
import 'package:get/get.dart';

import '../../repository/apis/service.api.dart';
import '../../repository/storage/data.storage.dart';

class NavBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DataStorage());
    Get.lazyPut(() => ServiceApi());
    Get.put(ServiceRepo(Get.find()));
    Get.put(AppointmentController());
    Get.put(NavBarController());
  }
}