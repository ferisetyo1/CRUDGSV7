import 'package:boonda_mitra/common/style/color_pallete.dart';
import 'package:boonda_mitra/common/widget/custom_card.dart';
import 'package:boonda_mitra/common/widget/general_empty.dart';
import 'package:boonda_mitra/modules/master_data/anak/model/children_response.dart';
import 'package:boonda_mitra/modules/master_data/master_data_pages.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:very_good_infinite_list/very_good_infinite_list.dart';
import 'list_children_controller.dart';

class ListChildrenPage extends GetView<ListChildrenController> {
  const ListChildrenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Anak'),
      ),
      body: RefreshIndicator(
          onRefresh: () async {
            controller.getChildren();
          },
          child: Obx(() => InfiniteList(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              itemCount: controller.list.length,
              onFetchData: () => controller.getChildren(),
              isLoading: controller.searchState.value.isLoading(),
              hasError: controller.searchState.value.isError(),
              hasReachedMax: controller.searchState.value.isReachedMax,
              errorBuilder: (context) =>
                  controller.searchState.value.errorWidget(),
              emptyBuilder: (context) => const Center(
                  child:
                      GeneralEmpty(message: "Belum ada Anak yang terdaftar")),
              separatorBuilder: (context, index) => const SizedBox(height: 8),
              itemBuilder: (context, index) {
                var data = controller.list[index];
                return ChildrenCard(
                  data: data,
                  onTap: () {
                    Get.toNamed(MasterDataPages.detailAnak,
                        parameters: {"id": data.id.toString()});
                  },
                );
              }))),
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

class ImgError extends StatelessWidget {
  final double width;
  final double height;
  final double iconSize;
  const ImgError({
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
          Icons.broken_image,
          color: ColorPalletes.toscaNormal,
          size: iconSize,
        ),
      ),
    );
  }
}
