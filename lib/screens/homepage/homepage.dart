import 'package:acs_1/styles/acs_colors.dart';
import 'package:acs_1/styles/acs_typhoghraphy.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ACSColors.white,
          elevation: 0,
          titleSpacing: 20,
          leading:
              Image.asset('assets/images/logo.png', height: 170, width: 200),
          title: SizedBox(
            height: 35,
            child: TextFormField(
              textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration(
                hintText: 'Tìm kiếm',
                hintStyle: const TextStyle(
                  fontFamily: 'CrimsonPro-Light',
                  fontSize: 18,
                  color: ACSColors.secondaryText,
                  fontWeight: FontWeight.w500,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(
                      color: ACSColors.secondaryText, width: 1),
                ),
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/icons/notification.png',
                  height: 24, width: 24),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.asset('assets/images/banner-1.jpg'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Tất cả các dịch vụ',
                  style: ACSTyphoghraphy.homeHeading,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 120,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: ACSColors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: ACSColors.secondaryText),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/icons/service-1.png',
                            height: 45, width: 45),
                        const SizedBox(height: 10),
                        const Text(
                          'Bảo trì',
                          style: ACSTyphoghraphy.radioTitle,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 120,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: ACSColors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: ACSColors.secondaryText),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/icons/service-1.png',
                            height: 45, width: 45),
                        const SizedBox(height: 10),
                        const Text(
                          'Vệ sinh',
                          style: ACSTyphoghraphy.radioTitle,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 120,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: ACSColors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: ACSColors.secondaryText),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/icons/service-1.png',
                            height: 45, width: 45),
                        const SizedBox(height: 10),
                        const Text(
                          'Sửa chữa',
                          style: ACSTyphoghraphy.radioTitle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Khuyến mãi',
                  style: ACSTyphoghraphy.homeHeading,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: SizedBox(
                  height: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image.asset('assets/images/banner-1.jpg'),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Image.asset('assets/images/banner-3.jpg'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    flex: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Image.asset('assets/images/banner-3.jpg'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
