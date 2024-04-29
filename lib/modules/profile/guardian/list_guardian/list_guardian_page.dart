import 'package:boonda_mitra/common/style/color_pallete.dart';
import 'package:boonda_mitra/common/widget/custom_card.dart';
import 'package:boonda_mitra/modules/profile/profile_pages.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'list_guardian_controller.dart';

class ListGuardianPage extends GetView<ListGuardianController> {
  const ListGuardianPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Penjemput'),
        actions: [
          Tooltip(
            triggerMode: TooltipTriggerMode.tap,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: const Border.fromBorderSide(
                    BorderSide(color: ColorPalletes.abuabuTerang))),
            textStyle: const TextStyle(color: Colors.black),
            message: "maximum__guardians_can_be_added".tr,
            child: const Icon(Icons.help_outline),
          ).marginOnly(right: 12)
        ],
      ),
      persistentFooterButtons: [
        FilledButton(
                onPressed: () async {
                  final result = await Get.toNamed(ProfilePages.addGuardian);
                  if (result == true) {
                    controller.getList();
                  }
                },
                child: const Text("Tambah Penjemput"))
            .marginSymmetric(horizontal: 20)
      ],
      body: RefreshIndicator(
          onRefresh: () async {
            controller.getList();
          },
          child: Obx(() => ListView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                children: [
                  controller.state.value.loadingWidget(),
                  controller.state.value.errorWidget(),
                  controller.state.value.noConnectionWidget(),
                  controller.state.value
                      .emptyWidget("Tidak ada profil penjemput yang tersedia"),
                  controller.state.value
                      .successWidget((data, total, hasReachedMax) => Column(
                            children: [
                              ...data.map((e) => CustomCard(
                                    onTap: () async {
                                      final result = await Get.toNamed(
                                          ProfilePages.addGuardian,
                                          arguments: e);
                                      if (result == true) {
                                        controller.getList();
                                      }
                                    },
                                    margin: EdgeInsets.zero,
                                    color: ColorPalletes.toscaTerang,
                                    useDefaultShadow: false,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            e.name ?? "",
                                            style: const TextStyle(
                                                color:
                                                    ColorPalletes.toscaNormal),
                                          ),
                                        ),
                                        const Icon(
                                            Icons.keyboard_arrow_right_rounded,
                                            color: ColorPalletes.toscaNormal)
                                      ],
                                    ),
                                  ).marginOnly(bottom: 16))
                            ],
                          )),
                ],
              ))),
    );
  }
}
