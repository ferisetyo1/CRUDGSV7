import 'package:boonda_mitra/common/style/color_pallete.dart';
import 'package:boonda_mitra/common/widget/expand_section.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'z_score_controller.dart';

class ZScorePage extends GetView<ZScoreController> {
  const ZScorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informasi Z-Score'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Obx(() {
              return Column(
                children: [
                  Row(
                    children: [
                      const Expanded(
                          child: Text(
                        "Apa itu Z-score ?",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                      AnimatedRotation(
                        turns: controller.section1.value ? 1 / 2 : 1,
                        duration: Durations.short4,
                        child: IconButton(
                            onPressed: () {
                              controller.section1.toggle();
                            },
                            icon: const Icon(Icons.keyboard_arrow_down)),
                      )
                    ],
                  ),
                  ExpandedSection(
                      expand: controller.section1.value,
                      child: const Text(
                          "Z score adalah suatu metode yang membandingkan nilai individu dengan nilai rujukan atau standar populasi yang sama.")),
                ],
              );
            }),
            Obx(() {
              return Column(
                children: [
                  Row(
                    children: [
                      const Expanded(
                          child: Text(
                        "Apa itu Indeks Berat Badan menurut Umur",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                      AnimatedRotation(
                        turns: controller.section2.value ? 1 / 2 : 1,
                        duration: Durations.short4,
                        child: IconButton(
                            onPressed: () {
                              controller.section2.toggle();
                            },
                            icon: const Icon(Icons.keyboard_arrow_down)),
                      )
                    ],
                  ),
                  ExpandedSection(
                      expand: controller.section2.value,
                      child: const Column(
                        children: [
                          Text(
                              "Indeks Berat Badan menurut Umur adalah indeks sederhana dari berat badan terhadap tinggi badan yang  digunakan untuk mengklasifikasikan kelebihan berat badan dan Obesitas  pada anak-anak."),
                          Text(
                              "Indeks Berat Badan menurut Umur dihitung dari berat badan seseorang dalam kilogram dibagi dengan kuadrat tinggi badan dalam meter (kg/m2)."),
                        ],
                      )),
                ],
              );
            }),
            Obx(() {
              return Column(
                children: [
                  Row(
                    children: [
                      const Expanded(
                          child: Text(
                        "Rumus Z-Score",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                      AnimatedRotation(
                        turns: controller.section3.value ? 1 / 2 : 1,
                        duration: Durations.short4,
                        child: IconButton(
                            onPressed: () {
                              controller.section3.toggle();
                            },
                            icon: const Icon(Icons.keyboard_arrow_down)),
                      )
                    ],
                  ),
                  ExpandedSection(
                      expand: controller.section3.value,
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 8, right: 8),
                                decoration: const BoxDecoration(
                                    color: ColorPalletes.toscaNormal,
                                    shape: BoxShape.circle),
                                width: 6,
                                height: 6,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text("Berat / Tinggi < Median"),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 70,
                                          child: Column(
                                            children: [
                                              Text(
                                                "BB / TB",
                                              ),
                                              Divider(color: Colors.black),
                                              Text("U")
                                            ],
                                          ),
                                        ),
                                        const Text("=")
                                            .marginSymmetric(horizontal: 8),
                                        const Expanded(
                                            child: Column(
                                          children: [
                                            Text(
                                                "BB / TB Anak - BB / TB Median"),
                                            Divider(color: Colors.black),
                                            Text(
                                                "BB / TB Median - ( Tabel -1 SD )"),
                                          ],
                                        ))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 8, right: 8),
                                decoration: const BoxDecoration(
                                    color: ColorPalletes.toscaNormal,
                                    shape: BoxShape.circle),
                                width: 6,
                                height: 6,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text("Berat / Tinggi > Median"),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 70,
                                          child: Column(
                                            children: [
                                              Text(
                                                "BB / TB",
                                              ),
                                              Divider(color: Colors.black),
                                              Text("U")
                                            ],
                                          ),
                                        ),
                                        const Text("=")
                                            .marginSymmetric(horizontal: 8),
                                        const Expanded(
                                            child: Column(
                                          children: [
                                            Text(
                                                "BB / TB Anak - BB / TB Median"),
                                            Divider(color: Colors.black),
                                            Text(
                                                "( Tabel +1 SD ) - BB / TB Median"),
                                          ],
                                        ))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                ],
              );
            }),
            Obx(() {
              return Column(
                children: [
                  Row(
                    children: [
                      const Expanded(
                          child: Text(
                        "Tabel kategori gizi anak ( 0 - 60 Bulan)",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                      AnimatedRotation(
                        turns: controller.section4.value ? 1 / 2 : 1,
                        duration: Durations.short4,
                        child: IconButton(
                            onPressed: () {
                              controller.section4.toggle();
                            },
                            icon: const Icon(Icons.keyboard_arrow_down)),
                      )
                    ],
                  ),
                  ExpandedSection(
                      expand: controller.section4.value,
                      child: Column(
                        children: [
                          ...{
                            "Kategori status gizi (BB/U)": {
                              "Gizi Buruk": "< -3 SD",
                              "Gizi Kurang": "-3 SD sampai < -2 SD",
                              "Gizi Baik": "-2 SD sampai 2 SD",
                              "Gizi Lebih": "> 2 SD",
                            },
                            "Kategori status gizi (TB/U)": {
                              "Sangat Pendek": "< -3 SD",
                              "Pendek": "-3 SD sampai < -2 SD",
                              "Normal": "-2 SD sampai 2 SD",
                              "Tinggi": "> 2 SD",
                            },
                            "Kategori status gizi (BB/TB)": {
                              "Sangat Kurus": "< -3 SD",
                              "Kurus": "-3 SD sampai < -2 SD",
                              "Normal": "-2 SD sampai 2 SD",
                              "Gemuk": "> 2 SD",
                            },
                          }.entries.map((e) => Table(
                                border: TableBorder.all(
                                    color: ColorPalletes.abuabuTerang),
                                columnWidths: const {
                                  0: FlexColumnWidth(),
                                  1: FlexColumnWidth(),
                                },
                                children: [
                                  TableRow(children: [
                                    Text(e.key).marginSymmetric(
                                        horizontal: 8, vertical: 4),
                                    const Text("Z-Score").marginSymmetric(
                                        horizontal: 8, vertical: 4),
                                  ]),
                                  ...e.value.entries
                                      .map((e) => TableRow(children: [
                                            Text(e.key).marginSymmetric(
                                                horizontal: 8, vertical: 4),
                                            Text(e.value).marginSymmetric(
                                                horizontal: 8, vertical: 4),
                                          ]))
                                ],
                              ).marginOnly(bottom: 16)),
                        ],
                      )),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
