import 'package:acs_1/screens/appointment/appointment_detail.dart';
import 'package:acs_1/styles/acs_colors.dart';
import 'package:acs_1/styles/acs_typhoghraphy.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../repository/models/dummy_data.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({Key? key}) : super(key: key);

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  final status = ['Tất cả', 'Đang chờ', 'Đã hủy', 'Hoàn tất'];

  var _status = 'Tất cả';
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
                    items: status.map(buildMenuItem).toList(),
                    icon: Image.asset('assets/icons/arrow-down.png'),
                    elevation: 0,
                    isExpanded: true,
                    onChanged: (value) {
                      setState(() {
                        _status = value!;
                      });
                    },
                    value: _status,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: listAppointment.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Get.to(
                          () => AppointmentDetail(
                              appointment: listAppointment[index]),
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
                              child: Image.asset(
                                changeIconStatus(listAppointment[index].status),
                                height: 40,
                                width: 40,
                                color: changeColorStatus(
                                    listAppointment[index].status),
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
                                  Text(
                                    listAppointment[index].serviceType,
                                    style: ACSTyphoghraphy.appointmentDetail,
                                  ),
                                  Text(
                                    listAppointment[index].status,
                                    style: ACSTyphoghraphy.appointmentDetail
                                        .copyWith(
                                      color: changeColorStatus(
                                          listAppointment[index].status),
                                    ),
                                  ),
                                  Text(listAppointment[index].time,
                                      style: ACSTyphoghraphy.appointmentDetail),
                                  Text(listAppointment[index].date,
                                      style: ACSTyphoghraphy.appointmentDetail),
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

  String changeIconStatus(String status) {
    if (status.toLowerCase().contains('đã hủy')) {
      return 'assets/icons/error.png';
    } else if (status.toLowerCase().contains('hoàn tất')) {
      return 'assets/icons/check.png';
    }
    return 'assets/icons/waiting.png';
  }

  Color changeColorStatus(String status) {
    if (status.toLowerCase().contains('đã hủy')) {
      return Colors.red;
    } else if (status.toLowerCase().contains('hoàn tất')) {
      return Colors.green;
    }
    return Colors.blue;
  }
}
