import 'package:acs_1/repository/models/appointment.dart';
import 'package:get/get.dart';

import '../../@share/utils/util.dart';
import '../../repository/repo/service.repo.dart';
import '../build_nav_bar.dart';

class ConfirmBookingController extends GetxController {
  var appointment = Appointment().obs;
  final _serviceRepo = Get.find<ServiceRepo>();

  @override
  void onReady() {
    try{
      appointment.value = Get.arguments;
    }catch(e){
      Get.log(e.toString());
    }
    super.onReady();
  }

  confirmBooking() async {
    showLoading();
    await _serviceRepo.createAppointment(appointment: appointment.value).then((value) => {
      if (value){
        showSnackBar(
            title: "Thông báo",
            content: "Booking thành công"),
        Get.offAll(() => const BuildBottomNavBar())
      }
      else
        showSnackBar(
            title: "Báo lỗi",
            content: "Lấy dữ liệu tỉnh/thành phố từ hệ thống lỗi"),
      hideLoading()
    });
  }

}