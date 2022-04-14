import 'package:acs_1/screens/appointment/appointment.controller.dart';
import 'package:acs_1/screens/appointment/appointment_detail.dart';
import 'package:acs_1/styles/acs_colors.dart';
import 'package:acs_1/styles/acs_typhoghraphy.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppointmentScreen extends GetWidget<AppointmentController> {
  const AppointmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ACSColors.background,
        appBar: AppBar(
          backgroundColor: ACSColors.primary,
          title: const Text('Lịch hẹn', style: ACSTyphoghraphy.titleAppbar),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                decoration: BoxDecoration(
                  color: ACSColors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: ACSColors.primary, width: 1),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    items: controller.statusList.map(buildMenuItem).toList(),
                    icon: Image.asset('assets/icons/arrow-down.png'),
                    elevation: 0,
                    isExpanded: true,
                    onChanged: (value) {
                      if (value != null) {
                        controller.status.value = value;
                      }
                    },
                    value: controller.status.value,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Obx(() => ListView.builder(
                    itemCount: controller.listAppointment.value.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          controller.appointment.value = controller.listAppointment[index];
                          Get.to(
                            () => const AppointmentDetail(),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.only(
                              left: 16, right: 16, bottom: 20),
                          padding: const EdgeInsets.all(16),
                          height: 125,
                          decoration: BoxDecoration(
                            color: ACSColors.white,
                            borderRadius: BorderRadius.circular(12),
                            border:
                                Border.all(color: ACSColors.primary, width: 1),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Obx(() => Image.asset(
                                    changeIconStatus(
                                        controller.listAppointment[index].status),
                                    height: 40,
                                    width: 40,
                                    color: changeColorStatus(
                                        controller.listAppointment[index].status),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 13),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Text('Dịch vụ',
                                        style: ACSTyphoghraphy.appointmentTitle),
                                    Text('Trạng thái',
                                        style: ACSTyphoghraphy.appointmentTitle),
                                    Text('Thời gian',
                                        style: ACSTyphoghraphy.appointmentTitle),
                                    Text('Ngày',
                                        style: ACSTyphoghraphy.appointmentTitle),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Obx(() => Text(
                                        controller.listAppointment[index]
                                                .description ??
                                            '',
                                        style: ACSTyphoghraphy.appointmentDetail,
                                      ),
                                    ),
                                    Obx(() => Text(
                                        //TODO: fix
                                        controller.listAppointment[index].status
                                                .toString() ??
                                            '',
                                        style: ACSTyphoghraphy.appointmentDetail
                                            .copyWith(
                                          color: changeColorStatus(controller
                                              .listAppointment[index].status),
                                        ),
                                      ),
                                    ),
                                    Obx(() => Text(
                                          controller.listAppointment[index].time ??
                                              '',
                                          style: ACSTyphoghraphy.appointmentDetail),
                                    ),
                                    Obx(() => Text(
                                          controller.listAppointment[index].date ??
                                              '',
                                          style: ACSTyphoghraphy.appointmentDetail),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        child: Text(
          item,
          style: ACSTyphoghraphy.heading1,
        ),
        value: item,
      );

  String changeIconStatus(int? status) {
    if (status == 1) {
      return 'assets/icons/error.png';
    } else if (status == 2) {
      return 'assets/icons/check.png';
    }
    return 'assets/icons/waiting.png';
  }

  Color changeColorStatus(int? status) {
    if (status == 1) {
      return Colors.red;
    } else if (status == 2) {
      return Colors.green;
    }
    return Colors.blue;
  }
}
