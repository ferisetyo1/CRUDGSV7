import 'package:boonda_mitra/common/style/color_pallete.dart';
import 'package:boonda_mitra/common/widget/custom_card.dart';
import 'package:boonda_mitra/common/widget/general_empty.dart';
import 'package:boonda_mitra/modules/master_data/master_data_pages.dart';
import 'package:boonda_mitra/modules/master_data/orang_tua/model/orang_tua_response.dart';
import 'package:boonda_mitra/modules/master_data/anak/pilih_children/pilih_children_page.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:very_good_infinite_list/very_good_infinite_list.dart';
import 'orang_tua_controller.dart';

class OrangTuaPage extends GetView<OrangTuaController> {
  const OrangTuaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Orang Tua'),
      ),
      body: Column(
        children: [
          Expanded(
            child: RefreshIndicator(onRefresh: () async {
              controller.getList(refresh: true);
            }, child: Obx(() {
              return InfiniteList(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  itemCount: controller.list.length,
                  onFetchData: () => controller.getList(),
                  isLoading: controller.searchState.value.isLoading(),
                  hasError: controller.searchState.value.isError(),
                  hasReachedMax: controller.searchState.value.isReachedMax,
                  errorBuilder: (context) =>
                      controller.searchState.value.errorWidget(),
                  emptyBuilder: (context) => const Center(
                      child: GeneralEmpty(
                          message: "Belum ada orang tua yang terdaftar")),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 8),
                  itemBuilder: (context, index) {
                    var data = controller.list[index];
                    return ParentCard(
                      data: data,
                      onTap: () {
                        Get.toNamed(MasterDataPages.ortuDetail,
                            parameters: {"id": data.id.toString()});
                      },
                    );
                  });
            })),
          ),
        ],
      ),
    );
  }
}

class ParentCard extends StatelessWidget {
  const ParentCard({super.key, required this.data, this.onTap});

  final OrangTuaResponse data;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      onTap: () => onTap?.call(),
      margin: EdgeInsets.zero,
      borderColor: ColorPalletes.toscaMedium,
      color: ColorPalletes.toscaTerang,
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
        ],
      ),
    );
  }
}
