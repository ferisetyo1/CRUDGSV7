import 'package:boonda_mitra/common/style/color_pallete.dart';
import 'package:boonda_mitra/modules/landing/profile/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppVersionWidget extends GetView<ProfileController> {
  const AppVersionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var packageInfo = controller.packageInfo.value;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(thickness: 1, color: ColorPalletes.abuabuNormal),
        const SizedBox(height: 4),
        Text(
          "Boonda ${packageInfo.version}+${packageInfo.buildNumber} (Beta Version)",
          style: const TextStyle(
            fontSize: 12,
            color: ColorPalletes.abuabuGelap,
          ),
        ),
      ],
    ).marginSymmetric(horizontal: 20);
  }
}
