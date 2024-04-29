import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/home_page.dart';
import '../master_data/master_data_page.dart';
import '../profile/profile_page.dart';
import '../social_menu/social_menu_page.dart';

class MainController extends GetxController {
  RxInt index = 0.obs;

  final path = [
    "/main/home",
    "/main/my-order",
    "/main/monitoring",
    "/main/profile",
  ];

  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/main/home":
        index.value = 0;
        return GetPageRoute(
          settings: settings,
          page: () => const HomePage(),
        );
      case "/main/my-order":
        index.value = 1;
        return GetPageRoute(
          settings: settings,
          page: () => const MasterDataPage(),
        );
      case "/main/monitoring":
        index.value = 2;
        return GetPageRoute(
          settings: settings,
          page: () => const SocialMenuPage(),
        );
      case "/main/profile":
        index.value = 3;
        return GetPageRoute(
          settings: settings,
          page: () => const ProfilePage(),
        );
      default:
        index.value = 0;
        return GetPageRoute(
          settings: settings,
          page: () => const HomePage(),
        );
    }
  }

  changeIndex(int newIndex) {
    index.value = newIndex;
    Get.toNamed(path[newIndex], id: 1, preventDuplicates: false);
  }
}
