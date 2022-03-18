import 'package:acs_1/styles/acs_colors.dart';
import 'package:acs_1/styles/acs_typhoghraphy.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ACSColors.primary,
        extendBody: true,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'Hồ sơ cá nhân',
            style: ACSTyphoghraphy.titleAppbar,
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Center(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100)),
                      child: ClipRRect(
                        child: Image.asset('assets/images/avatar.jpg'),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 115,
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icons/edit-square.png',
                        height: 30,
                        width: 30,
                        color: ACSColors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.all(22),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: ACSColors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Họ tên',
                      style:
                          ACSTyphoghraphy.confirmHeading.copyWith(fontSize: 20),
                    ),
                    const SizedBox(height: 10),
                    Text('Lưu Phương Uyên', style: ACSTyphoghraphy.heading1),
                    const SizedBox(height: 16),
                    Text(
                      'Ngày sinh',
                      style:
                          ACSTyphoghraphy.confirmHeading.copyWith(fontSize: 20),
                    ),
                    const SizedBox(height: 10),
                    Text('01/01/1998', style: ACSTyphoghraphy.heading1),
                    const SizedBox(height: 16),
                    Text(
                      'Số điện thoại',
                      style:
                          ACSTyphoghraphy.confirmHeading.copyWith(fontSize: 20),
                    ),
                    const SizedBox(height: 10),
                    Text('0378285566', style: ACSTyphoghraphy.heading1),
                    const SizedBox(height: 16),
                    Text(
                      'Email',
                      style:
                          ACSTyphoghraphy.confirmHeading.copyWith(fontSize: 20),
                    ),
                    const SizedBox(height: 10),
                    Text('uyenlpse63216@fpt.edu.vn',
                        style: ACSTyphoghraphy.heading1),
                    const SizedBox(height: 16),
                    Text(
                      'Địa chỉ',
                      style:
                          ACSTyphoghraphy.confirmHeading.copyWith(fontSize: 20),
                    ),
                    SizedBox(height: 10),
                    Text('123 đường S11 phường An Lạc quận Bình Tân',
                        style: ACSTyphoghraphy.heading1),
                    const SizedBox(height: 16),
                    Text(
                      'Chức vụ',
                      style:
                          ACSTyphoghraphy.confirmHeading.copyWith(fontSize: 20),
                    ),
                    const SizedBox(height: 10),
                    Text('Thợ sửa chữa', style: ACSTyphoghraphy.heading1),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
