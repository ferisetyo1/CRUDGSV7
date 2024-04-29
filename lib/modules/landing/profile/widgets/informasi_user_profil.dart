import 'package:boonda_mitra/common/style/color_pallete.dart';
import 'package:boonda_mitra/modules/landing/profile/model/profile.dart';
import 'package:boonda_mitra/modules/profile/profile_pages.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../profile_controller.dart';

class InformasiUserProfil extends GetView<ProfileController> {
  const InformasiUserProfil({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final profileState = controller.profilData.value;
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: CachedNetworkImage(
              width: 64,
              height: 64,
              fit: BoxFit.cover,
              imageUrl: profileState.data?.photo ?? "",
              errorWidget: (context, error, stackTrace) {
                return const Icon(
                  Icons.account_circle,
                  size: 64,
                  color: ColorPalletes.toscaMedium,
                );
              },
            ),
          ),
          const SizedBox(
            width: 14,
          ),
          Expanded(
            child: Visibility(
              visible: profileState.isSuccess(),
              replacement: Visibility(
                  visible: profileState.isLoading(),
                  replacement: Visibility(
                    visible: profileState.isEmpty(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Guest",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          decoration: BoxDecoration(
                              color: ColorPalletes.toscaNormal,
                              borderRadius: BorderRadius.circular(8)),
                          child: InkWell(
                              onTap: () {
                                Get.toNamed("/auth/login");
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(
                                    Icons.login,
                                    color: Colors.white,
                                    size: 18,
                                  ).marginOnly(right: 8),
                                  Text("log_in".tr,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      )),
                                ],
                              )).marginSymmetric(horizontal: 12, vertical: 8),
                        ),
                      ],
                    ),
                  ),
                  child: const Center(
                    child: CircularProgressIndicator(
                      color: ColorPalletes.toscaNormal,
                    ),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _verifWidget(profileState.data),
                  const SizedBox(height: 4),
                  Text(
                    profileState.data?.name ?? "",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                        color: ColorPalletes.toscaNormal,
                        borderRadius: BorderRadius.circular(8)),
                    child: InkWell(
                      onTap: () async {
                        final result = await Get.toNamed(ProfilePages.update);
                        if (result == "success") {
                          controller.getProfile();
                        }
                      },
                      child: Ink(
                        child: Text(
                          "edit_profile".tr,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ).marginSymmetric(horizontal: 20);
    });
  }

  Widget _verifWidget(Profile? profil) {
    return GestureDetector(
      onTap: () {
        // context.navigateTo(const VerificationRoute());
      },
      child: Visibility(
        visible: profil?.verificationStatus == "VERIFIED",
        replacement: const Row(
          children: [
            Icon(
              Icons.gpp_bad_outlined,
              color: ColorPalletes.orange,
              size: 16,
            ),
            Text(
              " Not Verified",
              style: TextStyle(
                fontSize: 12,
                color: ColorPalletes.orange,
              ),
            ),
          ],
        ),
        child: const Row(
          children: [
            Icon(
              Icons.verified_user_rounded,
              color: ColorPalletes.toscaNormal,
              size: 16,
            ),
            Text(
              " Verified",
              style: TextStyle(
                fontSize: 12,
                color: ColorPalletes.toscaNormal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
