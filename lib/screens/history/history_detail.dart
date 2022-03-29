import 'package:acs_1/styles/acs_colors.dart';
import 'package:acs_1/styles/acs_typhoghraphy.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HistoryDetail extends StatelessWidget {
  const HistoryDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ACSColors.background,
      appBar: AppBar(
        backgroundColor: ACSColors.primary,
        title:
            const Text('Chi tiết đơn hàng', style: ACSTyphoghraphy.titleAppbar),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                color: ACSColors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '1. Thông tin khách hàng',
                    style: ACSTyphoghraphy.confirmTitle.copyWith(
                      fontFamily: 'CrimsonPro-Bold',
                      fontSize: 20,
                      color: ACSColors.secondaryText,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Divider(color: ACSColors.background, thickness: 2),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Tên khách hàng',
                          style: ACSTyphoghraphy.title,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Chị Uyên',
                          style: ACSTyphoghraphy.detail,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Số điện thoại',
                          style: ACSTyphoghraphy.title,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          '0378285566',
                          style: ACSTyphoghraphy.detail,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Địa chỉ',
                          style: ACSTyphoghraphy.title,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Số 123 đường S11 - Phường An Lạc - Quận Bình Tân',
                          style: ACSTyphoghraphy.detail,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                color: ACSColors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '2. Thông tin nhân viên',
                    style: ACSTyphoghraphy.confirmTitle.copyWith(
                      fontFamily: 'CrimsonPro-Bold',
                      fontSize: 20,
                      color: ACSColors.secondaryText,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Divider(color: ACSColors.background, thickness: 2),
                  Row(
                    children: const [
                      Expanded(
                        flex: 2,
                        child: Text('Tên nhân viên 1',
                            style: ACSTyphoghraphy.title),
                      ),
                      Expanded(
                        flex: 2,
                        child:
                            Text('Nguyễn Ngọc', style: ACSTyphoghraphy.detail),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      Expanded(
                        flex: 2,
                        child:
                            Text('Số điện thoại', style: ACSTyphoghraphy.title),
                      ),
                      Expanded(
                        flex: 2,
                        child:
                            Text('1234567890', style: ACSTyphoghraphy.detail),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      Expanded(
                        flex: 2,
                        child: Text('Tên nhân viên 2',
                            style: ACSTyphoghraphy.title),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text('Bùi Mạnh Tùng',
                            style: ACSTyphoghraphy.detail),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      Expanded(
                        flex: 2,
                        child:
                            Text('Số điện thoai', style: ACSTyphoghraphy.title),
                      ),
                      Expanded(
                        flex: 2,
                        child:
                            Text('0123456789', style: ACSTyphoghraphy.detail),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                color: ACSColors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '3. Nội dung sửa chữa',
                    style: ACSTyphoghraphy.confirmTitle.copyWith(
                      fontFamily: 'CrimsonPro-Bold',
                      fontSize: 20,
                      color: ACSColors.secondaryText,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Divider(color: ACSColors.background, thickness: 2),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Expanded(
                        flex: 2,
                        child:
                            Text('Ngày sửa chữa', style: ACSTyphoghraphy.title),
                      ),
                      Expanded(
                        flex: 2,
                        child:
                            Text('07/01/2022', style: ACSTyphoghraphy.detail),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Expanded(
                        flex: 2,
                        child:
                            Text('Tổng số máy', style: ACSTyphoghraphy.title),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text('4', style: ACSTyphoghraphy.detail),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Expanded(
                        flex: 2,
                        child: Text('Tình trạng', style: ACSTyphoghraphy.title),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Hư bộ phận bơm ga, bụi bẩn',
                          style: ACSTyphoghraphy.detail,
                          overflow: TextOverflow.clip,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text('Nội dung', style: ACSTyphoghraphy.title),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Dịch vụ',
                          style: ACSTyphoghraphy.detail
                              .copyWith(color: ACSColors.text),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Giá tiền',
                          style: ACSTyphoghraphy.detail
                              .copyWith(color: ACSColors.text),
                          overflow: TextOverflow.clip,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Thay bộ phận bơm ga',
                          style: ACSTyphoghraphy.detail
                              .copyWith(color: ACSColors.text),
                          overflow: TextOverflow.clip,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          '400.000 VNĐ',
                          style: ACSTyphoghraphy.detail
                              .copyWith(color: ACSColors.text),
                          overflow: TextOverflow.clip,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Vệ sinh máy',
                          style: ACSTyphoghraphy.detail
                              .copyWith(color: ACSColors.text),
                          overflow: TextOverflow.clip,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          '300.000 VNĐ',
                          style: ACSTyphoghraphy.detail
                              .copyWith(color: ACSColors.text),
                          overflow: TextOverflow.clip,
                        ),
                      ),
                    ],
                  ),
                  const Divider(color: ACSColors.background, thickness: 2),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(
                        flex: 2,
                        child: Text('Tổng cộng', style: ACSTyphoghraphy.detail),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          '700.000 VNĐ',
                          style: ACSTyphoghraphy.detail.copyWith(
                            color: const Color.fromRGBO(14, 151, 19, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: ElevatedButton(
          onPressed: () => Get.back(),
          child: const Text(
            'Đóng',
            style: ACSTyphoghraphy.buttonTitle,
          ),
          style: ElevatedButton.styleFrom(
              primary: ACSColors.primary,
              padding: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
        ),
      ),
    );
  }
}
