import 'package:acs_1/styles/acs_colors.dart';
import 'package:acs_1/styles/acs_typhoghraphy.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../repository/models/appointment.dart';

/*class AppointmentDetail extends StatefulWidget {
  final Appointment appointment;

  const AppointmentDetail({
    Key? key,
    required this.appointment,
  }) : super(key: key);

  @override
  State<AppointmentDetail> createState() => _AppointmentDetailState();
}

class _AppointmentDetailState extends State<AppointmentDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ACSColors.background,
      appBar: AppBar(
        backgroundColor: ACSColors.primary,
        title:
            const Text('Chi tiết lịch hẹn', style: ACSTyphoghraphy.titleAppbar),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: Image.asset('assets/icons/close-square.png',
                height: 30, width: 30),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                const Expanded(
                  flex: 1,
                  child:
                      Text('Trạng thái', style: ACSTyphoghraphy.confirmTitle),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    widget.appointment.status,
                    style: ACSTyphoghraphy.confirmSubTitle.copyWith(
                      color: changeColorStatus(widget.appointment.status),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: Text('Tên khách hàng',
                      style: ACSTyphoghraphy.confirmTitle),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    widget.appointment.fullname,
                    style: ACSTyphoghraphy.confirmSubTitle,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: Text('Số điện thoại',
                      style: ACSTyphoghraphy.confirmTitle),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    widget.appointment.phone,
                    style: ACSTyphoghraphy.confirmSubTitle,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: Text('Dịch vụ', style: ACSTyphoghraphy.confirmTitle),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    widget.appointment.serviceType,
                    style: ACSTyphoghraphy.confirmSubTitle,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: Text('Số lượng', style: ACSTyphoghraphy.confirmTitle),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    widget.appointment.quantity,
                    style: ACSTyphoghraphy.confirmSubTitle,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: Text('Thời gian', style: ACSTyphoghraphy.confirmTitle),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    widget.appointment.time,
                    style: ACSTyphoghraphy.confirmSubTitle,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: Text('Ngày hẹn', style: ACSTyphoghraphy.confirmTitle),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    widget.appointment.date,
                    style: ACSTyphoghraphy.confirmSubTitle,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: Text('Địa chỉ', style: ACSTyphoghraphy.confirmTitle),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    widget.appointment.address,
                    style: ACSTyphoghraphy.confirmSubTitle,
                    overflow: TextOverflow.clip,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ElevatedButton(
          onPressed: changeStateButton(widget.appointment.status),
          child: const Text(
            'Hủy đơn',
            style: ACSTyphoghraphy.buttonTitle,
          ),
          style: ElevatedButton.styleFrom(
              primary: ACSColors.red,
              padding: const EdgeInsets.all(10),
              minimumSize: const Size(160, 48),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
        ),
      ),
    );
  }

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

  VoidCallback? changeStateButton(String status) {
    if (status.toLowerCase().contains('đã hủy')) {
      return null;
    } else if (status.toLowerCase().contains('hoàn tất')) {
      return null;
    }
    return () {};
  }
}*/
