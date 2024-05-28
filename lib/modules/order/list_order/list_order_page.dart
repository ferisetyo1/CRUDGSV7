import 'package:boonda_mitra/common/style/color_pallete.dart';
import 'package:boonda_mitra/common/utils/string_ext.dart';
import 'package:boonda_mitra/common/utils/widget_ext.dart';
import 'package:boonda_mitra/common/widget/custom_card.dart';
import 'package:boonda_mitra/modules/landing/home/home_page.dart';
import 'package:boonda_mitra/modules/order/order_pages.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './list_order_controller.dart';

class ListOrderPage extends GetView<ListOrderController> {
  const ListOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaksi'),
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: CustomCard(
                color: ColorPalletes.latar,
                borderColor: ColorPalletes.toscaTerang,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Total Pemasukan",
                        style: TextStyle(
                            color: ColorPalletes.abuabuGelap, fontSize: 12),
                      ),
                      Obx(() {
                        int? reduce = 0;
                        try {
                          reduce = controller.order.value.data
                              ?.map((e) =>
                                  e.value?.map((e) => e.totalPrice ?? 0).reduce(
                                      (value, element) => value + element) ??
                                  0)
                              .reduce((value, element) => value + element);
                        } catch (e) {
                          e.printError();
                        }
                        return Text(
                          reduce?.toIDRCurrency(symbol: "Rp ") ?? "Rp0",
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w700),
                        );
                      }),
                    ])),
          ),
          Row(
            children: [
              const Text(
                "Daftar Transaksi",
                style:
                    TextStyle(color: ColorPalletes.abuabuGelap, fontSize: 12),
              ),
              const Spacer(),
              const Text(
                "Filter",
                style:
                    TextStyle(color: ColorPalletes.abuabuGelap, fontSize: 12),
              )
                  .suffix(const Icon(
                Icons.keyboard_arrow_down,
                size: 18,
                color: ColorPalletes.orange,
              ))
                  .clickable(() async {
                final result = await Get.toNamed(OrderPages.filter,
                    arguments: controller.filter.value);
                if (result != null) {
                  controller.filter.value = result;
                  controller.getRekap();
                }
              })
            ],
          ).marginSymmetric(horizontal: 20, vertical: 8),
          Expanded(
            child: RefreshIndicator.adaptive(
                onRefresh: () async {
                  controller.getRekap();
                },
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  physics: const AlwaysScrollableScrollPhysics()
                      .applyTo(const BouncingScrollPhysics()),
                  children: [
                    Obx(() => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            controller.order.value.loadingWidget(),
                            controller.order.value
                                .emptyWidget("Belum ada transaksi"),
                            controller.order.value.errorWidget(),
                            ...controller.order.value.data?.map((e) => Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          e.date ?? "",
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        ...e.value?.map(
                                                (e) => CardOrder(data: e)) ??
                                            []
                                      ],
                                    )) ??
                                []
                          ],
                        ))
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
