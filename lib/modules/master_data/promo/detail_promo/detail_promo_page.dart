import 'package:boonda_mitra/common/style/color_pallete.dart';
import 'package:boonda_mitra/common/utils/date_ext.dart';
import 'package:boonda_mitra/common/utils/string_ext.dart';
import 'package:boonda_mitra/modules/master_data/anak/list_children/list_children_page.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './detail_promo_controller.dart';

class DetailPromoPage extends GetView<DetailPromoController> {
  const DetailPromoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Promo'),
        actions: [
          IconButton(
              onPressed: () {
                controller.hapusPromo();
              },
              icon: const Icon(
                Icons.delete_outline,
                color: Colors.red,
              ))
        ],
      ),
      persistentFooterButtons: [
        FilledButton(onPressed: () {}, child: Text("Edit Promo"))
            .marginSymmetric(horizontal: 20, vertical: 8)
      ],
      body: RefreshIndicator(
        onRefresh: () async {
          controller.fetchDetail();
        },
        child: Obx(() {
          return ListView(
            padding: const EdgeInsets.all(20),
            children: [
              controller.state.value.loadingWidget(),
              controller.state.value
                  .emptyWidget("Promo telah hilang atau dihapus"),
              controller.state.value.errorWidget(),
              controller.state.value.successWidget((data, _, __) => Column(
                    children: [
                      Row(
                        children: [
                          Image.network(
                            data.photo ?? "",
                            width: 80,
                            height: 80,
                            errorBuilder: (context, error, stackTrace) =>
                                const ImgError(
                              width: 80,
                              height: 80,
                            ),
                          ).marginOnly(right: 16),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data.name ?? "",
                                style: const TextStyle(fontSize: 16),
                              ),
                              Text(
                                data.description ?? "",
                                style: const TextStyle(
                                    fontSize: 12,
                                    color: ColorPalletes.abuabuGelap),
                              )
                            ],
                          ))
                        ],
                      ),
                      const Divider(
                        height: 32,
                        color: ColorPalletes.abuabuTerang,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Besar Promo",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: ColorPalletes.abuabuGelap),
                                ),
                                Text(data.type == "amount"
                                    ? (data.amount?.toIDRCurrency() ?? "")
                                    : "${data.percent}%"),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Masa Berlaku",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: ColorPalletes.abuabuGelap),
                                ),
                                Text(
                                    "${data.startDate?.format("dd/MM/yyyy")} - ${data.endDate?.format("dd/MM/yyyy")}"),
                              ],
                            ),
                          ),
                        ],
                      ).marginOnly(bottom: 16),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Minimal Pemesanan",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: ColorPalletes.abuabuGelap),
                                ),
                                Text(12.toString()),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Maksimal Diskon",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: ColorPalletes.abuabuGelap),
                                ),
                                Text(data.maximumDiscount
                                        ?.toIDRCurrency(symbol: "Rp ") ??
                                    ""),
                              ],
                            ),
                          ),
                        ],
                      ).marginOnly(bottom: 16),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Kode Promo",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: ColorPalletes.abuabuGelap),
                                ),
                                Text(data.code ?? ""),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Opsi",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: ColorPalletes.abuabuGelap),
                                ),
                                Text("Opsiiii"),
                              ],
                            ),
                          ),
                        ],
                      ).marginOnly(bottom: 16),
                    ],
                  )),
            ],
          );
        }),
      ),
    );
  }
}
