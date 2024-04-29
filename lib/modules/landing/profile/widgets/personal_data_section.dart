import 'package:boonda_mitra/common/widget/expand_section.dart';
import 'package:boonda_mitra/modules/landing/profile/profile_controller.dart';
import 'package:boonda_mitra/modules/landing/profile/widgets/list_tile_profile.dart';
import 'package:boonda_mitra/modules/profile/profile_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersonalDataSection extends GetView<ProfileController> {
  const PersonalDataSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Visibility(
            visible: controller.profilData.value.isSuccess(),
            child: ListTileProfile(
              text: "personal_data".tr,
              leadingIcon: const Icon(Icons.person),
              trailingIcon: Icon(controller.expandPersonalChild.value
                  ? Icons.keyboard_arrow_up
                  : Icons.keyboard_arrow_down),
              onTap: () {
                controller.expandPersonalChild.toggle();
              },
            ),
          ),
        ),
        Obx(() => Visibility(
              visible: controller.profilData.value.isSuccess(),
              child: Padding(
                padding: const EdgeInsets.only(left: 44),
                child: ExpandedSection(
                    expand: controller.expandPersonalChild.value,
                    child: Column(
                      children: [
                        ListTileProfile(
                          text: "child_profile".tr,
                          trailingIcon: const Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            Get.toNamed(ProfilePages.listChildren);
                          },
                        ),
                        ListTileProfile(
                          text: "guardian_profile".tr,
                          trailingIcon: const Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            Get.toNamed(ProfilePages.listGuardian);
                          },
                        ),
                        ListTileProfile(
                          text: "change_email".tr,
                          trailingIcon: const Icon(Icons.keyboard_arrow_right),
                          onTap: () async {
                            Get.toNamed(ProfilePages.changeEmail,
                                arguments: controller.profilData.value.data);
                          },
                        ),
                        ListTileProfile(
                          text: controller
                                      .profilData.value.data?.isFreePassword ==
                                  true
                              ? "create_password".tr
                              : "change_password".tr,
                          trailingIcon: const Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            Get.toNamed(ProfilePages.changePassword);
                          },
                        ),
                        ListTileProfile(
                          text: "Hapus Akun",
                          trailingIcon: const Icon(Icons.keyboard_arrow_right),
                          onTap: () async {
                            Get.toNamed(ProfilePages.hapusAkun);
                          },
                        ),
                      ],
                    )),
              ),
            )),
      ],
    );
  }
}
