import 'package:acs_1/styles/acs_colors.dart';
import 'package:acs_1/styles/acs_typhoghraphy.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppointmentDetail extends StatelessWidget {
  const AppointmentDetail({Key? key}) : super(key: key);

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
              children: const [
                Expanded(
                  flex: 1,
                  child:
                      Text('Trạng thái', style: ACSTyphoghraphy.confirmTitle),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'Đang chờ',
                    style: ACSTyphoghraphy.confirmSubTitle,
                  ),
                ),
              ],
            ),
            Row(
              children: const [
                Expanded(
                  flex: 1,
                  child: Text('Tên khách hàng',
                      style: ACSTyphoghraphy.confirmTitle),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'Chị Uyên',
                    style: ACSTyphoghraphy.confirmSubTitle,
                  ),
                ),
              ],
            ),
            Row(
              children: const [
                Expanded(
                  flex: 1,
                  child: Text('Số điện thoại',
                      style: ACSTyphoghraphy.confirmTitle),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    '0378285566',
                    style: ACSTyphoghraphy.confirmSubTitle,
                  ),
                ),
              ],
            ),
            Row(
              children: const [
                Expanded(
                  flex: 1,
                  child: Text('Dịch vụ', style: ACSTyphoghraphy.confirmTitle),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'Bảo trì máy lạnh',
                    style: ACSTyphoghraphy.confirmSubTitle,
                  ),
                ),
              ],
            ),
            Row(
              children: const [
                Expanded(
                  flex: 1,
                  child: Text('Số lượng', style: ACSTyphoghraphy.confirmTitle),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    '3',
                    style: ACSTyphoghraphy.confirmSubTitle,
                  ),
                ),
              ],
            ),
            Row(
              children: const [
                Expanded(
                  flex: 1,
                  child: Text('Thời gian', style: ACSTyphoghraphy.confirmTitle),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    '8:00 - 9:00',
                    style: ACSTyphoghraphy.confirmSubTitle,
                  ),
                ),
              ],
            ),
            Row(
              children: const [
                Expanded(
                  flex: 1,
                  child: Text('Ngày hẹn', style: ACSTyphoghraphy.confirmTitle),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    '14/02/2022',
                    style: ACSTyphoghraphy.confirmSubTitle,
                  ),
                ),
              ],
            ),
            Row(
              children: const [
                Expanded(
                  flex: 1,
                  child: Text('Địa chỉ', style: ACSTyphoghraphy.confirmTitle),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'Số 123 đường S11 - Phường An Lạc - Quận Bình Tân',
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {},
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
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Đóng',
                style: ACSTyphoghraphy.buttonTitle,
              ),
              style: ElevatedButton.styleFrom(
                  primary: ACSColors.primary,
                  padding: const EdgeInsets.all(10),
                  minimumSize: const Size(160, 48),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ],
        ),
      ),
    );
  }
}
