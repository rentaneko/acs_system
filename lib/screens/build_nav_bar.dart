import 'package:acs_1/screens/booking.dart';
import 'package:acs_1/screens/homepage.dart';
import 'package:acs_1/styles/acs_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pandabar/main.view.dart';
import 'package:pandabar/model.dart';

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
      extendBody: true,
      bottomNavigationBar: PandaBar(
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
            id: 'Profile',
            icon: Icons.person,
            title: 'Profile',
          ),
          PandaBarButtonData(
            id: 'Setting',
            icon: Icons.settings,
            title: 'Setting',
          ),
        ],
        onChange: (id) {
          setState(() => page = id);
        },
        onFabButtonPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => BookingScreen())),
      ),
      body: Builder(
        builder: (context) {
          switch (page) {
            case 'Home':
              return const HomeScreen();
            case 'Appointment':
              return Container(color: Colors.blue.shade900);
            case 'Profile':
              return Container(color: Colors.red.shade900);
            case 'Setting':
              return Container(color: Colors.yellow.shade700);
            default:
              return Container();
          }
        },
      ),
    );
  }
}
