import 'package:acs_1/repository/models/appointment.dart';
import 'package:get/get.dart';

import '../../@share/utils/util.dart';
import '../../repository/models/Profile.dart';
import '../../repository/repo/service.repo.dart';
import '../../repository/storage/data.storage.dart';

class AppointmentController extends GetxController {
  final statusList = ['Tất cả', 'Đang chờ', 'Đã hủy', 'Hoàn tất'];
  var status = 'Tất cả'.obs;

  var listAppointment = <Appointment>[].obs;
  var appointment = Appointment().obs;

  final _serviceRepo = Get.find<ServiceRepo>();
  final _dataStorage = Get.find<DataStorage>();

  @override
  void onReady() {
    getAppointmentByCusId();
    super.onReady();
  }

  getAppointmentByCusId() async {
    int? id = _dataStorage.getToken();
    if (id != null) {
      showLoading();
      await _serviceRepo
          .getAppointmentByCusId(customer: id ?? 0)
          .then((value) => {
                if (value != null)
                  listAppointment.value = value
                else
                  showSnackBar(
                      title: "Báo lỗi", content: "getAppointmentByCusId Lỗi"),
                hideLoading()
              });
    }
  }
}
