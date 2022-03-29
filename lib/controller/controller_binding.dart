import 'package:acs_1/controller/basic_controller.dart';
import 'package:get/get.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BasicController());
  }
}
