import 'package:acs_1/@share/router/pages.dart';
import 'package:acs_1/screens/login/login.screen.dart';
import 'package:get/get_navigation/get_navigation.dart';
import '../../screens/login/login.binding.dart';

class Routers {
  static final route = [
    GetPage(name: ROUTER_LOGIN, page: () => const LoginScreen(), binding: LoginBinding()),
  ];
}
