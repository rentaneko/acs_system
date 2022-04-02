import 'package:acs_1/screens/login/login.screen.dart';
import 'package:acs_1/styles/acs_colors.dart';
import 'package:acs_1/styles/acs_typhoghraphy.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ACSColors.primary,
        extendBody: true,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(110),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 4),
            color: ACSColors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ACSColors.white.withOpacity(0.5),
                    ),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/avatar.jpg'),
                      radius: 74,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text('Lưu Phương Uyên',
                          style: ACSTyphoghraphy.profileTitle),
                      Text('0378285566', style: ACSTyphoghraphy.profileTitle),
                      Text('Thợ máy', style: ACSTyphoghraphy.profileTitle),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icons/setting.png',
                        color: ACSColors.secondaryText,
                      )),
                ),
              ],
            ),
          ),
        ),
        body: Container(
          color: ACSColors.white,
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.only(top: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _profileListTitle(
                  'assets/icons/argee.png', 'Thoả thuận sử dụng', () {}),
              _profileListTitle(
                  'assets/icons/key.png', 'Chính sách bảo mật', () {}),
              _profileListTitle(
                  'assets/icons/phone.png', 'Liên lạc và hỗ trợ', () {}),
              _profileListTitle(
                  'assets/icons/corporate.png', 'Thông tin công ty  ', () {}),
              _profileListTitle('assets/icons/faqs.png', 'FAQs', () {}),
              _profileListTitle(
                  'assets/icons/information.png', 'Thông tin ứng dụng', () {}),
              ListTile(
                leading: Image.asset(
                  'assets/icons/log-out.png',
                  height: 24,
                  width: 24,
                ),
                title: Text('Đăng xuất tài khoản',
                    style: ACSTyphoghraphy.listTitle
                        .copyWith(color: const Color.fromRGBO(198, 33, 53, 1))),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _profileListTitle(
      String iconUrl, String title, VoidCallback function) {
    return ListTile(
      trailing: Image.asset(
        'assets/icons/arrow-right.png',
        color: ACSColors.secondaryText,
        height: 24,
        width: 24,
      ),
      leading: Image.asset(
        iconUrl,
        color: ACSColors.secondaryText,
        height: 24,
        width: 24,
      ),
      title: Text(title, style: ACSTyphoghraphy.listTitle),
      onTap: function,
    );
  }
}
