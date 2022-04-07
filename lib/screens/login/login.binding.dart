import 'package:acs_1/repository/repo/user.repo.dart';
import 'package:get/get.dart';

import '../../repository/apis/user.api.dart';
import '../../repository/storage/data.storage.dart';
import 'login.controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DataStorage());
    Get.lazyPut(() => UserApi());
    Get.put(UserRepo(Get.find()));
    Get.put(LoginController());
  }
}