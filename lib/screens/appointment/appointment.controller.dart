import 'package:acs_1/repository/models/appointment.dart';
import 'package:get/get.dart';

class AppointmentController extends GetxController {
  final statusList = ['Tất cả', 'Đang chờ', 'Đã hủy', 'Hoàn tất'];
  var status = 'Tất cả'.obs;

  var listAppointment = <Appointment>[].obs;
}