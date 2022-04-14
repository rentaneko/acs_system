import 'package:acs_1/@share/router/pages.dart';
import 'package:acs_1/@share/utils/util.dart';
import 'package:acs_1/controller/basic_controller.dart';
import 'package:acs_1/screens/booking/booking.dart';
import 'package:acs_1/screens/appointment/appointment.dart';
import 'package:acs_1/screens/build_nav_bar.controller.dart';
import 'package:acs_1/screens/history/history.dart';
import 'package:acs_1/screens/homepage/homepage.dart';
import 'package:acs_1/screens/profile/profile_screen.dart';
import 'package:acs_1/styles/acs_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pandabar/main.view.dart';
import 'package:pandabar/model.dart';
import 'package:loading_indicator/loading_indicator.dart';

class BuildBottomNavBar extends GetWidget<NavBarController> {
  const BuildBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: SizedBox(
          height: 100,
          child: PandaBar(
            backgroundColor: ACSColors.primary,
            buttonSelectedColor: ACSColors.white,
            fabIcon: const Icon(CupertinoIcons.add,
                color: ACSColors.white, size: 30),
            fabColors: const [
              ACSColors.primary,
              ACSColors.primary,
              ACSColors.primary,
            ],
            buttonData: [
              PandaBarButtonData(
                id: 0,
                icon: Icons.home,
                title: 'Home',
              ),
              PandaBarButtonData(
                id: 1,
                icon: CupertinoIcons.doc_text,
                title: 'Appointment',
              ),
              PandaBarButtonData(
                id: 2,
                icon: Icons.receipt_outlined,
                title: 'History',
              ),
              PandaBarButtonData(
                id: 3,
                icon: Icons.person,
                title: 'Profile',
              ),
            ],
            onChange: (id) {
              controller.selectIndex(id);
            },
            onFabButtonPressed: () => goTo(screen: ROUTER_BOOKING),
          ),
        ),
        body: Obx(() => controller.getScreen()));
  }
}
