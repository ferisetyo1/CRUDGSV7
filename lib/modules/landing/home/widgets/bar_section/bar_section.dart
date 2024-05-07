import 'package:boonda_mitra/common/utils/widget_ext.dart';
import 'package:boonda_mitra/modules/landing/home/widgets/bar_section/notif_counter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/style/image_asset.dart';
import '../../../profile/profile_controller.dart';

class BarSection extends GetView<ProfileController> {
  const BarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final profileState = controller.profilData.value;
      return Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Daycare",
                      style: TextStyle(fontSize: 10),
                    ).prefix(Image.asset(
                      ImageAssetPath.daycareFeature,
                      width: 16,
                      height: 16,
                    )),
                    Text(
                      (profileState.data?.name ?? "guest".tr),
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  ],
                )
              ],
            ).paddingOnly(top: 12),
          ),
          if (!profileState.isEmpty()) const NotifCounter(),
        ],
      ).marginSymmetric(horizontal: 20);
    });
  }
}
