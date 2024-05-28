import 'package:boonda_mitra/common/style/color_pallete.dart';
import 'package:boonda_mitra/common/widget/custom_card.dart';
import 'package:boonda_mitra/modules/master_data/anak/model/children_response.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'pilih_children_controller.dart';

class PilihChildrenPage extends GetView<PilihChildrenController> {
  const PilihChildrenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pilih Anak'),
      ),
      persistentFooterButtons: [
        Obx(() {
          return FilledButton(
                  onPressed: controller.selected.isEmpty
                      ? null
                      : () {
                          Get.back(result: controller.selected.toList());
                        },
                  child: const Text("Pilih Anak"))
              .marginSymmetric(horizontal: 20, vertical: 8);
        })
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
                                    isActive: controller.selected
                                            .firstWhereOrNull((element) =>
                                                element.id == e.id) !=
                                        null,
                                    onTap: () {
                                      controller.setSelected(e);
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
  const ChildrenCard(
      {super.key, required this.data, this.isActive = false, this.onTap});

  final ChildrenResponse data;
  final Function? onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      onTap: () => onTap?.call(),
      margin: EdgeInsets.zero,
      borderColor: ColorPalletes.abuabuTerang,
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(data.name ?? ""),
                Text(
                  data.ageString ?? "7 tahun",
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
          if (isActive)
            const Icon(
              Icons.check,
              color: ColorPalletes.toscaNormal,
            )
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
