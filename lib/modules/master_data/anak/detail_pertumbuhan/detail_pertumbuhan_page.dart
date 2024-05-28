import 'package:boonda_mitra/common/style/color_pallete.dart';
import 'package:boonda_mitra/common/utils/date_ext.dart';
import 'package:boonda_mitra/common/utils/widget_ext.dart';
import 'package:boonda_mitra/common/widget/custom_card.dart';
import 'package:boonda_mitra/common/widget/general_error.dart';
import 'package:boonda_mitra/modules/master_data/master_data_pages.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:very_good_infinite_list/very_good_infinite_list.dart';
import 'detail_pertumbuhan_controller.dart';

class DetailPertumbuhanPage extends GetView<DetailPertumbuhanController> {
  const DetailPertumbuhanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Data Pertumbuhan'),
          actions: [
            IconButton(
                    onPressed: () {
                      Get.toNamed(MasterDataPages.addDataPertumbuhan,
                          parameters: {
                            "id_anak": controller.idChild.toString()
                          });
                    },
                    icon: const Icon(Icons.add))
                .marginOnly(right: 12)
          ],
        ),
        body: Column(
          children: [
            CustomCard(
              borderColor: ColorPalletes.abuabuTerang,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Table(
                    columnWidths: const {
                      0: FlexColumnWidth(2),
                      1: FlexColumnWidth(1),
                      2: FlexColumnWidth(1),
                    },
                    children: [
                      TableRow(children: [
                        TableCell(
                            child: const Text(
                          "Kategori",
                          style: TextStyle(
                              color: ColorPalletes.abuabuGelap, fontSize: 10),
                        ).marginOnly(bottom: 8)),
                        TableCell(
                            child: const Text("Z-Score",
                                    style: TextStyle(
                                        color: ColorPalletes.abuabuGelap,
                                        fontSize: 10))
                                .marginOnly(bottom: 8)),
                        TableCell(
                            child: const Text("Status Gizi",
                                    style: TextStyle(
                                        color: ColorPalletes.abuabuGelap,
                                        fontSize: 10))
                                .marginOnly(bottom: 8)),
                      ]),
                      TableRow(children: [
                        TableCell(
                            child: const Text("BB / U",
                                    style: TextStyle(fontSize: 12))
                                .marginOnly(bottom: 8)),
                        const TableCell(
                            child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("0 SD", style: TextStyle(fontSize: 12)),
                            Text("8.2 Kg",
                                style: TextStyle(
                                    color: ColorPalletes.abuabuGelap,
                                    fontSize: 10)),
                          ],
                        )).marginOnly(bottom: 8),
                        TableCell(
                            child: const Text("Gizi Baik",
                                    style: TextStyle(fontSize: 12))
                                .marginOnly(bottom: 8)),
                      ]),
                      TableRow(children: [
                        TableCell(
                            child: const Text("TB / U",
                                    style: TextStyle(fontSize: 12))
                                .marginOnly(bottom: 8)),
                        TableCell(
                            child: const Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("+2 SD", style: TextStyle(fontSize: 12)),
                            Text("76.6 cm",
                                style: TextStyle(
                                    color: ColorPalletes.abuabuGelap,
                                    fontSize: 10)),
                          ],
                        ).marginOnly(bottom: 8)),
                        TableCell(
                            child: const Text("Tinggi",
                                    style: TextStyle(fontSize: 12))
                                .marginOnly(bottom: 8)),
                      ]),
                      const TableRow(children: [
                        TableCell(
                            child: Text("BB / TB",
                                style: TextStyle(fontSize: 12))),
                        TableCell(
                            child:
                                Text("+1 SD", style: TextStyle(fontSize: 12))),
                        TableCell(
                            child:
                                Text("Normal", style: TextStyle(fontSize: 12))),
                      ]),
                    ],
                  ).marginOnly(bottom: 16),
                  const Text("Catatan",
                      style: TextStyle(
                          color: ColorPalletes.abuabuGelap, fontSize: 10)),
                  const Row(
                    children: [
                      Expanded(
                          child: Text("BB : Berat Badan",
                              style: TextStyle(fontSize: 10))),
                      Expanded(
                          child: Text("TB : Tinggi Badan",
                              style: TextStyle(fontSize: 10))),
                      Expanded(
                          child:
                              Text("U : Umur", style: TextStyle(fontSize: 10))),
                    ],
                  ).marginOnly(bottom: 16),
                  Row(
                    children: [
                      const Icon(
                        Icons.info_outline,
                        size: 14,
                      ).marginOnly(right: 8),
                      const Expanded(
                          child: Text(
                        "Informasi Z-Score",
                        style: TextStyle(fontSize: 10),
                      )),
                      const Icon(
                        Icons.keyboard_arrow_right_rounded,
                        size: 14,
                      )
                    ],
                  )
                      .withBgContainer(
                          color: ColorPalletes.toscaTerang,
                          contentPadding: const EdgeInsets.all(12),
                          borderRadius: 8)
                      .clickable(() {
                    Get.toNamed(MasterDataPages.infoZScore);
                  }, padding: EdgeInsets.zero)
                ],
              ),
            ),
            const TabBar(
              labelColor: Colors.black87,
              indicatorColor: ColorPalletes.orange,
              unselectedLabelColor: ColorPalletes.abuabuGelap,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 3,
              tabs: [
                Tab(text: "Berat"),
                Tab(text: "Tinggi"),
                Tab(
                  child: Text(
                    "Lingkar Kepala",
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ).marginSymmetric(horizontal: 20),
            Expanded(
              child: TabBarView(
                children: [
                  RefreshIndicator.adaptive(
                    onRefresh: () async {
                      controller.getBerat(refresh: true);
                    },
                    child: Obx(() => InfiniteList(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 20),
                          itemCount: controller.beratList.length,
                          isLoading: controller.beratState.value.isLoading(),
                          onFetchData: () async {
                            controller.getBerat();
                          },
                          hasError: controller.beratState.value.isError(),
                          errorBuilder: (context) => GeneralError(
                              message:
                                  controller.beratState.value.errorMessage),
                          hasReachedMax:
                              controller.beratState.value.isReachedMax,
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 16),
                          emptyBuilder: (context) => const GeneralError(
                              message: "Maaf sepertinya belum ada "),
                          itemBuilder: (context, index) {
                            final item = controller.beratList.elementAt(index);
                            return CustomCard(
                              onTap: () {},
                              margin: EdgeInsets.zero,
                              borderColor: ColorPalletes.toscaNormal,
                              color: ColorPalletes.toscaTerang,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          item.measureDate
                                                  ?.format("dd MMMM yyyy") ??
                                              "",
                                          style: const TextStyle(
                                              color: ColorPalletes.abuabuGelap),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              item.age ?? "",
                                              style:
                                                  const TextStyle(fontSize: 24),
                                            ),
                                            const Text(" Bulan",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: ColorPalletes
                                                        .abuabuGelap)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        item.weight ?? "",
                                        style: const TextStyle(fontSize: 24),
                                      ),
                                      const Text(" Kg",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color:
                                                  ColorPalletes.abuabuGelap)),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        )),
                  ),
                  RefreshIndicator.adaptive(
                    onRefresh: () async {
                      controller.getTinggi(refresh: true);
                    },
                    child: Obx(() => InfiniteList(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 20),
                          itemCount: controller.tinggiList.length,
                          isLoading: controller.tinggiState.value.isLoading(),
                          onFetchData: () async {
                            controller.getTinggi();
                          },
                          hasError: controller.tinggiState.value.isError(),
                          errorBuilder: (context) => GeneralError(
                              message:
                                  controller.tinggiState.value.errorMessage),
                          hasReachedMax:
                              controller.tinggiState.value.isReachedMax,
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 16),
                          emptyBuilder: (context) => const GeneralError(
                              message: "Maaf sepertinya belum ada "),
                          itemBuilder: (context, index) {
                            final item = controller.tinggiList.elementAt(index);
                            return CustomCard(
                              onTap: () {},
                              margin: EdgeInsets.zero,
                              borderColor: ColorPalletes.toscaNormal,
                              color: ColorPalletes.toscaTerang,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          item.measureDate
                                                  ?.format("dd MMMM yyyy") ??
                                              "",
                                          style: const TextStyle(
                                              color: ColorPalletes.abuabuGelap),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              item.age ?? "",
                                              style:
                                                  const TextStyle(fontSize: 24),
                                            ),
                                            const Text(" Bulan",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: ColorPalletes
                                                        .abuabuGelap)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        item.height ?? "",
                                        style: const TextStyle(fontSize: 24),
                                      ),
                                      const Text(" Cm",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color:
                                                  ColorPalletes.abuabuGelap)),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        )),
                  ),
                  RefreshIndicator.adaptive(
                    onRefresh: () async {
                      controller.getKepala(refresh: true);
                    },
                    child: Obx(() => InfiniteList(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 20),
                          itemCount: controller.kepalaList.length,
                          isLoading: controller.kepalaState.value.isLoading(),
                          onFetchData: () async {
                            controller.getKepala();
                          },
                          hasError: controller.kepalaState.value.isError(),
                          errorBuilder: (context) => GeneralError(
                              message:
                                  controller.kepalaState.value.errorMessage),
                          hasReachedMax:
                              controller.kepalaState.value.isReachedMax,
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 16),
                          emptyBuilder: (context) => const GeneralError(
                              message: "Maaf sepertinya belum ada"),
                          itemBuilder: (context, index) {
                            final item = controller.kepalaList.elementAt(index);
                            return CustomCard(
                              onTap: () {},
                              margin: EdgeInsets.zero,
                              borderColor: ColorPalletes.toscaNormal,
                              color: ColorPalletes.toscaTerang,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          item.measureDate
                                                  ?.format("dd MMMM yyyy") ??
                                              "",
                                          style: const TextStyle(
                                              color: ColorPalletes.abuabuGelap),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              item.age ?? "",
                                              style:
                                                  const TextStyle(fontSize: 24),
                                            ),
                                            const Text(" Bulan",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: ColorPalletes
                                                        .abuabuGelap)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        item.headCircumtance ?? "",
                                        style: const TextStyle(fontSize: 24),
                                      ),
                                      const Text(" Cm",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color:
                                                  ColorPalletes.abuabuGelap)),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
