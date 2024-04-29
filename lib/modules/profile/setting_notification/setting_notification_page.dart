import 'package:boonda_mitra/common/widget/general_empty.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../common/style/color_pallete.dart';
import './setting_notification_controller.dart';

class SettingNotificationPage extends GetView<SettingNotificationController> {
  const SettingNotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("notifications".tr),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          controller.getNotifSetting();
        },
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Obx(() => Column(
                  children: [
                    controller.list.value.errorWidget(),
                    controller.list.value.loadingWidget(),
                    controller.list.value.noConnectionWidget(),
                    controller.list.value
                        .successWidget((data, total, hasReachedMax) {
                      if (data.isEmpty) {
                        return const Center(child: GeneralEmpty());
                      }
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                "Mute all notifications".tr,
                              )),
                              Switch(
                                  activeColor: ColorPalletes.toscaNormal,
                                  value: !(data
                                      .map((element) => element.isActive)
                                      .contains(true)),
                                  onChanged: (value) {
                                    controller.updateSettingAll(!value);
                                  })
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Push Notifications".tr,
                            style: const TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 16),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          ...data.map((e) => Row(
                                children: [
                                  Expanded(
                                      child: Text(
                                    e.name ?? "",
                                  )),
                                  Switch(
                                      activeColor: ColorPalletes.toscaNormal,
                                      value: e.isActive ?? false,
                                      onChanged: (value) {
                                        controller.updateSetting(e, value);
                                      })
                                ],
                              ))
                        ],
                      );
                    }),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
