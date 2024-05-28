import 'package:boonda_mitra/common/style/color_pallete.dart';
import 'package:boonda_mitra/common/utils/widget_ext.dart';
import 'package:boonda_mitra/common/utils/date_ext.dart';
import 'package:boonda_mitra/common/widget/custom_card.dart';
import 'package:boonda_mitra/common/widget/general_empty.dart';
import 'package:boonda_mitra/modules/master_data/master_data_pages.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:very_good_infinite_list/very_good_infinite_list.dart';
import 'promo_controller.dart';

class PromoPage extends GetView<PromoController> {
  const PromoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Promo'),
        ),
        persistentFooterButtons: [
          FilledButton(
                  onPressed: () => Get.toNamed(MasterDataPages.createPromo),
                  child: const Text("Buat Promo"))
              .marginSymmetric(horizontal: 20, vertical: 8)
        ],
        body: RefreshIndicator(
            onRefresh: () async => controller.getList(refresh: true),
            child: Obx(() => InfiniteList(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  itemCount: controller.list.length,
                  onFetchData: () => controller.getList(),
                  isLoading: controller.searchState.value.isLoading(),
                  hasError: controller.searchState.value.isError(),
                  hasReachedMax: controller.searchState.value.isReachedMax,
                  errorBuilder: (context) =>
                      controller.searchState.value.errorWidget(),
                  emptyBuilder: (context) => controller.searchState.value
                      .emptyWidget("Belum ada promo yang dibuat"),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 8),
                  itemBuilder: (context, index) {
                    final e = controller.list[index];
                    return CustomCard(
                      onTap: () {
                        Get.toNamed(MasterDataPages.detailPromo,
                            parameters: {"id": e.id.toString()});
                      },
                      margin: const EdgeInsets.all(0),
                      borderColor: ColorPalletes.abuabuTerang,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            e.name ?? "",
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ).marginOnly(bottom: 8),
                          Text(
                            e.description ?? "",
                            style: const TextStyle(
                                color: ColorPalletes.abuabuGelap, fontSize: 12),
                            overflow: TextOverflow.ellipsis,
                          ).marginOnly(bottom: 8),
                          const Text(
                            "Syarat dan Ketentuan",
                            style: TextStyle(
                                color: ColorPalletes.orange, fontSize: 12),
                          ).clickable(() {}, padding: EdgeInsets.zero),
                          const Divider(
                            color: ColorPalletes.abuabuTerang,
                            height: 16,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Tanggal Berakhir",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: ColorPalletes.abuabuGelap),
                                  ),
                                  Text(e.endDate?.format("dd MMMM yyyy") ?? "",
                                      style: const TextStyle(
                                        fontSize: 10,
                                      ))
                                ],
                              )),
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Kuota Promo",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: ColorPalletes.abuabuGelap),
                                  ),
                                  Text(
                                      "${int.tryParse(e.quota.toString()) ?? 0} Orang",
                                      style: TextStyle(
                                        fontSize: 10,
                                      ))
                                ],
                              ))
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ))));
  }
}
