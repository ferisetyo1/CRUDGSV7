import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/style/color_pallete.dart';
import 'main_controller.dart';

final navigatorKey = Get.nestedKey(1);

class MainPage extends GetView<MainController> {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        initialRoute: controller.path.first,
        key: navigatorKey,
        reportsRouteUpdateToEngine: true,
        onGenerateRoute: controller.onGenerateRoute,
      ),
      bottomNavigationBar: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16.0), // adjust to your liking
              topRight: Radius.circular(16.0), // adjust to your liking
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
            color: Colors.grey, // put the color here
          ),
          child: Obx(
            () => BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: controller.index.value,
                onTap: (index) {
                  controller.changeIndex(index);
                },
                elevation: 0,
                selectedItemColor: ColorPalletes.orange,
                unselectedItemColor: ColorPalletes.abuabuNormal,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                selectedFontSize: 14,
                unselectedFontSize: 14,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home_filled), label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.receipt), label: "My Order"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.event_note), label: "Monitoring"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person), label: "Profile"),
                ]),
          )),
    );
  }
}
