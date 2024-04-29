import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../profile_controller.dart';

class ErrorMessageWidget extends GetView<ProfileController> {
  const ErrorMessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final profileState = controller.profilData.value;
      return Visibility(
        visible: profileState.isError(),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          decoration: BoxDecoration(
              color: Colors.red.shade300,
              borderRadius: BorderRadius.circular(8)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Terjadi Kesalahan!",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
              ),
              Text(
                profileState.errorMessage,
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
            ],
          ),
        ).marginOnly(bottom: 16),
      );
    });
  }
}
