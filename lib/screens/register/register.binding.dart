import 'package:acs_1/repository/repo/user.repo.dart';
import 'package:acs_1/screens/register/register.controller.dart';
import 'package:get/get.dart';

import '../../repository/apis/user.api.dart';
import '../../repository/storage/data.storage.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DataStorage());
    Get.lazyPut(() => UserApi());
    Get.put(UserRepo(Get.find()));
    Get.put(RegisterController());
  }
}