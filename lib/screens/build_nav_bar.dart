import 'package:acs_1/screens/booking.dart';
import 'package:acs_1/screens/appointment.dart';
import 'package:acs_1/screens/history.dart';
import 'package:acs_1/screens/homepage.dart';
import 'package:acs_1/screens/profile_screen.dart';
import 'package:acs_1/styles/acs_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pandabar/main.view.dart';
import 'package:pandabar/model.dart';
import 'package:acs_1/screens/loginCustomer/login.dart';

class BuildBottomNavBar extends StatefulWidget {
  const BuildBottomNavBar({Key? key}) : super(key: key);

  @override
  State<BuildBottomNavBar> createState() => _BuildBottomNavBarState();
}

class _BuildBottomNavBarState extends State<BuildBottomNavBar> {
  String page = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 100,
        child: PandaBar(
          backgroundColor: ACSColors.primary,
          buttonSelectedColor: ACSColors.white,
          fabIcon:
              const Icon(CupertinoIcons.add, color: ACSColors.white, size: 30),
          fabColors: const [
            ACSColors.primary,
            ACSColors.primary,
            ACSColors.primary,
          ],
          buttonData: [
            PandaBarButtonData(
              id: 'Home',
              icon: Icons.home,
              title: 'Home',
            ),
            PandaBarButtonData(
              id: 'Appointment',
              icon: CupertinoIcons.doc_text,
              title: 'Appointment',
            ),
            PandaBarButtonData(
              id: 'History',
              icon: Icons.receipt_outlined,
              title: 'History',
            ),
            PandaBarButtonData(
              id: 'Profile',
              icon: Icons.person,
              title: 'Profile',
            ),
          ],
          onChange: (id) {
            setState(() => page = id);
          },
          onFabButtonPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => BookingScreen())),
        ),
      ),
      body: Builder(
        builder: (context) {
          switch (page) {
            case 'Home':
              return const HomeScreen();
            case 'Appointment':
              return const AppointmentScreen();
            case 'History':
              return HistoryScreen();
            case 'Profile':
              return const ProfileScreen();
            default:
              return Container();
          }
        },
      ),
    );
  }
}
