import 'package:boonda_mitra/common/widget/expand_section.dart';
import 'package:boonda_mitra/modules/landing/profile/profile_controller.dart';
import 'package:boonda_mitra/modules/landing/profile/widgets/list_tile_profile.dart';
import 'package:boonda_mitra/modules/profile/profile_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsSection extends GetView<ProfileController> {
  const SettingsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => ListTileProfile(
              text: "setting".tr,
              leadingIcon: const Icon(Icons.settings),
              trailingIcon: Icon(controller.expandSettingChild.value
                  ? Icons.keyboard_arrow_up
                  : Icons.keyboard_arrow_down),
              onTap: () {
                controller.expandSettingChild.toggle();
              },
            )),
        Obx(
          () => ExpandedSection(
              expand: controller.expandSettingChild.value,
              child: Column(
                children: [
                  Visibility(
                    visible: controller.profilData.value.isSuccess(),
                    child: ListTileProfile(
                      text: "notifications".tr,
                      trailingIcon: const Icon(Icons.keyboard_arrow_right),
                      onTap: () {
                        Get.toNamed(ProfilePages.settingNotification);
                      },
                    ),
                  ),
                  Visibility(
                    visible: controller.profilData.value.isSuccess(),
                    child: ListTileProfile(
                      text: "language".tr,
                      trailingIcon: const Icon(Icons.keyboard_arrow_right),
                      onTap: () async {
                        if (await Get.toNamed(ProfilePages.changeLanguage) ==
                            "success") {
                          controller.getProfile();
                        }
                      },
                    ),
                  ),
                  ListTileProfile(
                    text: "terms_and_conditions".tr,
                    trailingIcon: const Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      Get.toNamed(ProfilePages.tnc);
                    },
                  ),
                  ListTileProfile(
                    text: "privacy_policy".tr,
                    trailingIcon: const Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      Get.toNamed(ProfilePages.privacy);
                    },
                  ),
                  ListTileProfile(
                    text: "about".tr,
                    trailingIcon: const Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      Get.toNamed(ProfilePages.about);
                    },
                  ),
                ],
              )),
        ).marginOnly(left: 44),
      ],
    );
  }
}
