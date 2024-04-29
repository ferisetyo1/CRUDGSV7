import 'package:boonda_mitra/common/widget/boonda_alert_dialog.dart';
import 'package:boonda_mitra/modules/landing/profile/profile_controller.dart';
import 'package:boonda_mitra/modules/landing/profile/widgets/list_tile_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogoutSection extends GetView<ProfileController> {
  const LogoutSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Visibility(
        visible: !controller.profilData.value.isEmpty(),
        child: ListTileProfile(
          text: "logout".tr,
          leadingIcon: const Icon(Icons.logout),
          onTap: () {
            showDialog(
                context: context,
                builder: (context) {
                  return BoondaAlertDialog(
                    title: "Logout",
                    btnTextPositive: "Logout",
                    content:
                        "are_you_sure_you_want_to_logout_from_this_account".tr,
                    onTapPositive: () {
                      controller.logout();
                    },
                  );
                });
          },
        ),
      );
    });
  }
}
