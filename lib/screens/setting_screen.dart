import 'package:acs_1/styles/acs_colors.dart';
import 'package:acs_1/styles/acs_typhoghraphy.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ACSColors.primary,
        extendBody: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text('Cài đặt', style: ACSTyphoghraphy.titleAppbar),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 24),
            Expanded(
              flex: 2,
              child: Center(
                child: SizedBox(
                  height: 120,
                  width: 120,
                  child: Image.asset(
                    'assets/icons/customer-setting.png',
                    color: ACSColors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Expanded(
              flex: 5,
              child: Container(
                padding: const EdgeInsets.all(22),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: ACSColors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _settingListTitle('Chính sách của công ty', () {}),
                    const SizedBox(height: 30),
                    _settingListTitle('Thông tin công ty  ', () {}),
                    const SizedBox(height: 30),
                    _settingListTitle('Liên lạc và hỗ trợ', () {}),
                    const SizedBox(height: 30),
                    _settingListTitle('Đăng xuất tài khoản', () {}),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _settingListTitle(String title, VoidCallback function) {
    return InkWell(
      onTap: function,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: ACSTyphoghraphy.listTitle,
          ),
          Image.asset(
            'assets/icons/arrow-right.png',
            height: 22,
            width: 22,
            color: ACSColors.secondaryText,
          ),
        ],
      ),
    );
  }
}
