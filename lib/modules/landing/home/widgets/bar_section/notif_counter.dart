import 'package:boonda_mitra/modules/landing/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotifCounter extends GetView<HomeController> {
  const NotifCounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final data = controller.notifState.value.data ?? 0;
      return Badge.count(
          count: data,
          isLabelVisible: data > 0,
          backgroundColor: Colors.red,
          child: const Icon(Icons.notifications_outlined));
    });
  }
}
