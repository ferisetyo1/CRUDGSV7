import 'package:boonda_mitra/common/style/color_pallete.dart';
import 'package:boonda_mitra/common/utils/date_ext.dart';
import 'package:boonda_mitra/common/widget/custom_card.dart';
import 'package:boonda_mitra/modules/profile/children/list_children/list_children_page.dart';
import 'package:boonda_mitra/modules/profile/children/model/growth_response.dart';
import 'package:boonda_mitra/modules/profile/profile_pages.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './detail_anak_controller.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DetailAnakPage extends GetView<DetailAnakController> {
  const DetailAnakPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Detail Anak'),
          actions: [
            Obx(() {
              return controller.state.value
                  .successWidget((data, total, hasReachedMax) => IconButton(
                      onPressed: () {
                        Get.toNamed(ProfilePages.addChildren, arguments: data);
                      },
                      icon: const Icon(Icons.edit_outlined)));
            }).marginOnly(right: 12)
          ],
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            controller.getChildren();
          },
          child: Obx(() {
            return ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                controller.state.value.noConnectionWidget(),
                controller.state.value.loadingWidget(),
                controller.state.value.errorWidget(),
                controller.state.value.successWidget((data, total,
                        hasReachedMax) =>
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              data.photo ?? "",
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                              loadingBuilder:
                                  (context, child, loadingProgress) =>
                                      loadingProgress != null
                                          ? const ImgPersonEmpty(
                                              width: 100,
                                              height: 100,
                                            )
                                          : child,
                              errorBuilder: (context, error, stackTrace) =>
                                  const ImgPersonEmpty(
                                width: 100,
                                height: 100,
                              ),
                            ),
                          ).marginSymmetric(vertical: 24),
                        ),
                        Center(
                          child: Text(
                            data.name ?? "",
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Center(
                          child: Text(
                            data.nik ?? "",
                            style: const TextStyle(
                                color: ColorPalletes.abuabuGelap),
                          ).marginOnly(bottom: 24),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    data.ageString ?? " - ",
                                    style: const TextStyle(fontSize: 16),
                                    textAlign: TextAlign.center,
                                  ).marginOnly(bottom: 6),
                                  const Text("Umur",
                                      style: TextStyle(
                                          color: ColorPalletes.abuabuGelap)),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    data.birthDate?.format("dd/MM/yyyy") ?? "",
                                    style: const TextStyle(fontSize: 16),
                                    textAlign: TextAlign.center,
                                  ).marginOnly(bottom: 6),
                                  const Text("Tgl Lahir",
                                      style: TextStyle(
                                          color: ColorPalletes.abuabuGelap)),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    data.gender == "1"
                                        ? "Perempuan"
                                        : "Laki - Laki",
                                    style: const TextStyle(fontSize: 16),
                                    textAlign: TextAlign.center,
                                  ).marginOnly(bottom: 6),
                                  const Text(
                                    "Jenis Kelamin",
                                    style: TextStyle(
                                        color: ColorPalletes.abuabuGelap),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          height: 48,
                          color: ColorPalletes.abuabuTerang,
                        ),
                        const Text(
                          "Pertumbuhan",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
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
                        ),
                        SizedBox(
                          height: 300,
                          child: TabBarView(
                            children: [
                              Obx(() {
                                var data2 = controller.stateWeight.value.data;
                                return CardChart(
                                  label: "Berat (Kg)",
                                  source: ChartData.toListWeight(
                                      data2?.children ?? []),
                                  idealSource: ChartData.toListWeight(
                                      data2?.idealGrowth ?? []),
                                );
                              }),
                              Obx(() {
                                var data2 = controller.stateHeight.value.data;
                                return CardChart(
                                  label: "Tinggi (cm)",
                                  source: ChartData.toListHeight(
                                      data2?.children ?? []),
                                  idealSource: ChartData.toListHeight(
                                      data2?.idealGrowth ?? []),
                                );
                              }),
                              Obx(() {
                                var data2 = controller.stateHead.value.data;
                                return CardChart(
                                  label: "Lingkar Kepala (cm)",
                                  source: ChartData.toListHead(
                                      data2?.children ?? []),
                                  idealSource: ChartData.toListHead(
                                      data2?.idealGrowth ?? []),
                                );
                              }),
                            ],
                          ),
                        ).marginOnly(bottom: 8),
                        FilledButton(
                                onPressed: () {
                                  Get.toNamed(ProfilePages.detailPertumbuhan,
                                      parameters: {
                                        "id_anak": controller.id.toString()
                                      });
                                },
                                child: const Text("Detail Pertumbuhan"))
                            .marginOnly(bottom: 16),
                        const Text(
                          "Riwayat Mutasi",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ).marginOnly(bottom: 16),
                        Obx(() => Column(
                              children: [
                                if (controller
                                        .stateMutations.value.data?.isEmpty ==
                                    true)
                                  const Text("Belum ada Riwayat Mutasi"),
                                ...controller.stateMutations.value.data?.map(
                                      (e) => SizedBox(
                                        width: double.infinity,
                                        child: CustomCard(
                                          margin: EdgeInsets.zero,
                                          borderColor:
                                              ColorPalletes.abuabuTerang,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(e.daycare?.name ?? ""),
                                              Text(
                                                  "${e.startDate?.format("dd MMMM yyyy")} - ${e.endDate?.format("dd MMMM yyyy")}"),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ) ??
                                    []
                              ],
                            )),
                        const SizedBox(height: 24)
                      ],
                    )),
              ],
            );
          }),
        ),
      ),
    );
  }
}

class CardChart extends StatelessWidget {
  final List<ChartData> source;
  final List<ChartData> idealSource;
  final String label;
  const CardChart({
    super.key,
    required this.source,
    required this.label,
    required this.idealSource,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      margin: const EdgeInsets.symmetric(vertical: 16),
      borderColor: ColorPalletes.abuabuTerang,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                label,
                style: const TextStyle(fontSize: 12),
              ),
              const Spacer(),
              Column(
                children: [
                  ...{
                    "Anak Anda": ColorPalletes.toscaNormal,
                    "Data Ideal": ColorPalletes.orange,
                  }.entries.map(
                        (e) => Row(
                          children: [
                            Text(
                              e.key,
                              style: const TextStyle(
                                  fontSize: 10,
                                  color: ColorPalletes.abuabuGelap),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 4),
                              decoration: BoxDecoration(
                                  color: e.value,
                                  borderRadius: BorderRadius.circular(2)),
                              width: 8,
                              height: 8,
                            )
                          ],
                        ),
                      )
                ],
              )
            ],
          ),
          Expanded(
            child: SfCartesianChart(
              plotAreaBorderWidth: 0,
              primaryYAxis: const NumericAxis(
                  maximumLabels: 6,
                  axisLine: AxisLine(width: 0),
                  majorTickLines: MajorTickLines(size: 0)),
              primaryXAxis: const NumericAxis(
                maximumLabels: 9,
                majorGridLines: MajorGridLines(width: 0),
              ),
              series: [
                SplineSeries<ChartData, double>(
                  color: ColorPalletes.toscaNormal,
                  width: 2,
                  dataSource: [const ChartData(0, 0), ...source],
                  xValueMapper: (datum, index) => datum.x,
                  yValueMapper: (datum, index) => datum.y,
                ),
                SplineSeries<ChartData, double>(
                  color: ColorPalletes.orange,
                  width: 2,
                  dataSource: [const ChartData(0, 0), ...idealSource],
                  xValueMapper: (datum, index) => datum.x,
                  yValueMapper: (datum, index) => datum.y,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChartData {
  final double x;
  final double y;
  const ChartData(this.x, this.y);
  static List<ChartData> toListWeight(List<GrowthResponse> list) => list
      .map((e) => ChartData(double.tryParse(e.age ?? "") ?? 0.0,
          double.tryParse(e.weight ?? "") ?? 0.0))
      .toList();
  static List<ChartData> toListHeight(List<GrowthResponse> list) => list
      .map((e) => ChartData(double.tryParse(e.age ?? "") ?? 0.0,
          double.tryParse(e.height ?? "") ?? 0.0))
      .toList();
  static List<ChartData> toListHead(List<GrowthResponse> list) => list
      .map((e) => ChartData(double.tryParse(e.age ?? "") ?? 0.0,
          double.tryParse(e.headCircumtance ?? "") ?? 0.0))
      .toList();
}
