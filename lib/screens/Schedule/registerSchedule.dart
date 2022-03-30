import 'package:acs_1/screens/confirm_booking.dart';
import 'package:acs_1/styles/acs_colors.dart';
import 'package:acs_1/styles/acs_typhoghraphy.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class RegisterScheduleScreen extends StatefulWidget {
  RegisterScheduleScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScheduleScreen> createState() => _RegisterScheduleScreenState();
}

class _RegisterScheduleScreenState extends State<RegisterScheduleScreen> {
  final items = ['Ca sáng', 'Ca chiều', 'Cả ngày'];
  bool _isMale = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: ACSColors.primary,
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                barrierDismissible: false,
                useSafeArea: true,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text(
                      'Bạn xác nhận thoát khỏi giao diện đặt lịch?',
                      style:
                          ACSTyphoghraphy.confirmHeading.copyWith(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                    actionsAlignment: MainAxisAlignment.spaceAround,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                    ),
                    insetPadding: const EdgeInsets.symmetric(horizontal: 22),
                    contentPadding: const EdgeInsets.all(16),
                    actionsPadding: const EdgeInsets.only(bottom: 16),
                    actions: [
                      ElevatedButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text('Hủy', style: ACSTyphoghraphy.buttonTitle),
                        style: ElevatedButton.styleFrom(
                          primary: ACSColors.primary,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 5,
                          minimumSize: const Size(130, 42),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          Navigator.of(context).pop();
                        },
                        child: const Text('Đồng ý',
                            style: ACSTyphoghraphy.buttonTitle),
                        style: ElevatedButton.styleFrom(
                          primary: ACSColors.primary,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          elevation: 5,
                          minimumSize: const Size(130, 42),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
            icon: Image.asset(
              'assets/icons/close-square.png',
              color: ACSColors.white,
              height: 40,
              width: 40,
            ),
          ),
        ],
        title: const Text('Danh sách lịch biểu',
            style: ACSTyphoghraphy.titleAppbar),
      ),
      backgroundColor: ACSColors.background,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 40, 15, 0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Container(
                  height: 500,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ACSColors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: ACSColors.primary, width: 2),
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: Text(
                          '06/02/2022 - 12/02/2022',
                          style: TextStyle(
                            color: ACSColors.primary,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                'Thứ',
                                style: TextStyle(
                                  color: ACSColors.primary,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(105, 0, 0, 0),
                              child: Text(
                                'Ca làm việc',
                                style: TextStyle(
                                  color: ACSColors.primary,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                'Sun\n  6',
                                style: TextStyle(
                                  color: ACSColors.primary,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                              child: Container(
                                height: 30,
                                width: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color: ACSColors.primary, width: 1),
                                ),
                                child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                  style: TextStyle(
                                      color: ACSColors.primary, fontSize: 16),
                                  items: items.map(buildMenuItem).toList(),
                                  icon: Image.asset(
                                      'assets/icons/arrow-down.png'),
                                  elevation: 0,
                                  isExpanded: true,
                                  onChanged: (value) {},
                                  value: items[0],
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                'Sun\n  6',
                                style: TextStyle(
                                  color: ACSColors.primary,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                              child: Container(
                                height: 30,
                                width: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color: ACSColors.primary, width: 1),
                                ),
                                child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                  style: TextStyle(
                                      color: ACSColors.primary, fontSize: 16),
                                  items: items.map(buildMenuItem).toList(),
                                  icon: Image.asset(
                                      'assets/icons/arrow-down.png'),
                                  elevation: 0,
                                  isExpanded: true,
                                  onChanged: (value) {},
                                  value: items[0],
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                'Sun\n  6',
                                style: TextStyle(
                                  color: ACSColors.primary,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                              child: Container(
                                height: 30,
                                width: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color: ACSColors.primary, width: 1),
                                ),
                                child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                  style: TextStyle(
                                      color: ACSColors.primary, fontSize: 16),
                                  items: items.map(buildMenuItem).toList(),
                                  icon: Image.asset(
                                      'assets/icons/arrow-down.png'),
                                  elevation: 0,
                                  isExpanded: true,
                                  onChanged: (value) {},
                                  value: items[0],
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                'Sun\n  6',
                                style: TextStyle(
                                  color: ACSColors.primary,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                              child: Container(
                                height: 30,
                                width: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color: ACSColors.primary, width: 1),
                                ),
                                child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                  style: TextStyle(
                                      color: ACSColors.primary, fontSize: 16),
                                  items: items.map(buildMenuItem).toList(),
                                  icon: Image.asset(
                                      'assets/icons/arrow-down.png'),
                                  elevation: 0,
                                  isExpanded: true,
                                  onChanged: (value) {},
                                  value: items[0],
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                'Sun\n  6',
                                style: TextStyle(
                                  color: ACSColors.primary,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                              child: Container(
                                height: 30,
                                width: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color: ACSColors.primary, width: 1),
                                ),
                                child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                  style: TextStyle(
                                      color: ACSColors.primary, fontSize: 16),
                                  items: items.map(buildMenuItem).toList(),
                                  icon: Image.asset(
                                      'assets/icons/arrow-down.png'),
                                  elevation: 0,
                                  isExpanded: true,
                                  onChanged: (value) {},
                                  value: items[0],
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                'Sun\n  6',
                                style: TextStyle(
                                  color: ACSColors.primary,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                              child: Container(
                                height: 30,
                                width: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color: ACSColors.primary, width: 1),
                                ),
                                child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                  style: TextStyle(
                                      color: ACSColors.primary, fontSize: 16),
                                  items: items.map(buildMenuItem).toList(),
                                  icon: Image.asset(
                                      'assets/icons/arrow-down.png'),
                                  elevation: 0,
                                  isExpanded: true,
                                  onChanged: (value) {},
                                  value: items[0],
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                'Sun\n  6',
                                style: TextStyle(
                                  color: ACSColors.primary,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                              child: Container(
                                height: 30,
                                width: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color: ACSColors.primary, width: 1),
                                ),
                                child: DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                  style: TextStyle(
                                      color: ACSColors.primary, fontSize: 16),
                                  items: items.map(buildMenuItem).toList(),
                                  icon: Image.asset(
                                      'assets/icons/arrow-down.png'),
                                  elevation: 0,
                                  isExpanded: true,
                                  onChanged: (value) {},
                                  value: items[0],
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 90, 5, 0),
                child: SizedBox(
                  width: double.infinity,
                  height: 46,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: ACSColors.primary,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                    ),
                    onPressed: onSendClicked,
                    child: Text(
                      'Hoàn tất',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        child: Text(
          item,
          style: ACSTyphoghraphy.heading1,
        ),
        value: item,
      );
  void onSendClicked() {}
}
