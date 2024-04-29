import 'package:boonda_mitra/common/style/color_pallete.dart';
import 'package:boonda_mitra/common/widget/custom_card.dart';
import 'package:boonda_mitra/modules/profile/children/model/children_response.dart';
import 'package:boonda_mitra/modules/profile/profile_pages.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './list_children_controller.dart';

class ListChildrenPage extends GetView<ListChildrenController> {
  const ListChildrenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Anak'),
      ),
      persistentFooterButtons: [
        FilledButton(
          onPressed: () {
            Get.toNamed(ProfilePages.addChildren);
          },
          child: const Text("Tambah Anak"),
        ).marginSymmetric(horizontal: 20, vertical: 8)
      ],
      body: RefreshIndicator(
          onRefresh: () async {
            controller.getChildren();
          },
          child: Obx(() => ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  controller.state.value.loadingWidget(),
                  controller.state.value.errorWidget(),
                  controller.state.value.noConnectionWidget(),
                  controller.state.value
                      .successWidget((data, total, hasReachedMax) => Column(
                            children: [
                              ...data.map((e) => ChildrenCard(
                                    data: e,
                                    onTap: () {
                                      Get.toNamed(ProfilePages.detailAnak,
                                          parameters: {
                                            "id_anak": e.id.toString()
                                          });
                                    },
                                  ).marginOnly(bottom: 16))
                            ],
                          ))
                ],
              ))),
    );
  }
}

class ChildrenCard extends StatelessWidget {
  const ChildrenCard({super.key, required this.data, this.onTap});

  final ChildrenResponse data;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      onTap: () => onTap?.call(),
      margin: EdgeInsets.zero,
      color: ColorPalletes.toscaTerang,
      useDefaultShadow: false,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              data.photo ?? "",
              width: 40,
              height: 40,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) =>
                  loadingProgress != null ? const ImgPersonEmpty() : child,
              errorBuilder: (context, error, stackTrace) =>
                  const ImgPersonEmpty(),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              data.name ?? "",
              style: const TextStyle(color: ColorPalletes.toscaNormal),
            ),
          ),
          const Icon(Icons.keyboard_arrow_right_rounded,
              color: ColorPalletes.toscaNormal)
        ],
      ),
    );
  }
}

class ImgPersonEmpty extends StatelessWidget {
  final double width;
  final double height;
  final double iconSize;
  const ImgPersonEmpty({
    super.key,
    this.width = 40,
    this.height = 40,
    this.iconSize = 24,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: ColorPalletes.toscaTerang,
      child: Center(
        child: Icon(
          Icons.person,
          color: ColorPalletes.toscaNormal,
          size: iconSize,
        ),
      ),
    );
  }
}
