import 'package:cano/main/main.screen.dart';
import 'package:cano/main/main_screen.binding.dart';
import 'package:get/get.dart';

import 'routes.dart';

class AppPages {
  static const initial = Routes.main;

  static final routes = [
    // MAIN
    GetPage(
      name: Routes.main,
      page: () => const MainScreen(),
      binding: MainBinding(),
      transition: Transition.fadeIn,
    ),
  ];
}
