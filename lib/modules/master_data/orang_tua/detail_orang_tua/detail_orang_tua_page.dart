import 'package:boonda_mitra/common/style/color_pallete.dart';
import 'package:boonda_mitra/common/utils/widget_ext.dart';
import 'package:boonda_mitra/common/widget/custom_card.dart';
import 'package:boonda_mitra/modules/master_data/anak/list_children/list_children_page.dart';
import 'package:boonda_mitra/modules/master_data/orang_tua/model/orang_tua_response.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './detail_orang_tua_controller.dart';

class DetailOrangTuaPage extends GetView<DetailOrangTuaController> {
  const DetailOrangTuaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Orang Tua'),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          controller.getDetail();
        },
        child: Obx(() {
          return ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              controller.state.value.noConnectionWidget(),
              controller.state.value.loadingWidget(),
              controller.state.value.errorWidget(),
              controller.state.value
                  .successWidget((data, total, hasReachedMax) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                data.photo ?? "",
                                width: 64,
                                height: 64,
                                fit: BoxFit.cover,
                                loadingBuilder:
                                    (context, child, loadingProgress) =>
                                        loadingProgress != null
                                            ? const ImgPersonEmpty(
                                                width: 64,
                                                height: 64,
                                              )
                                            : child,
                                errorBuilder: (context, error, stackTrace) =>
                                    const ImgPersonEmpty(
                                  width: 64,
                                  height: 64,
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
                          CustomCard(
                            margin: const EdgeInsets.symmetric(vertical: 16),
                            borderColor: ColorPalletes.abuabuTerang,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Perhatian",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "Masa langganan akan segera habis pada tanggal 22 Januari 2024",
                                  style: TextStyle(
                                      color: ColorPalletes.abuabuGelap,
                                      fontSize: 12),
                                ).marginOnly(bottom: 8),
                                const Text(
                                  "Hubungi Orang Tua",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                )
                                    .withBgContainer(
                                        color: ColorPalletes.toscaNormal,
                                        borderRadius: 8)
                                    .clickable(() {},
                                        padding: const EdgeInsets.all(0))
                              ],
                            ),
                          ),
                          Table(
                            children: [
                              TableRow(children: [
                                TableCell(
                                    child: Text(
                                  "Status",
                                  style: TextStyle(
                                      color: ColorPalletes.abuabuGelap,
                                      fontSize: 12),
                                )),
                                TableCell(
                                    child: Text(
                                  data.gender == "0" ? "Ibu" : "Ayah",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(fontSize: 12),
                                )),
                              ]),
                              TableRow(children: [
                                TableCell(
                                    child: Text(
                                  "No. Telepon",
                                  style: TextStyle(
                                      color: ColorPalletes.abuabuGelap,
                                      fontSize: 12),
                                )),
                                TableCell(
                                    child: Text(
                                  data.phoneNumber ?? "-",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(fontSize: 12),
                                )),
                              ]),
                              TableRow(children: [
                                TableCell(
                                    child: Text(
                                  "Alamat",
                                  style: TextStyle(
                                      color: ColorPalletes.abuabuGelap,
                                      fontSize: 12),
                                )),
                                TableCell(
                                    child: Text(
                                  data.address ?? "-",
                                  textAlign: TextAlign.right,
                                  style: const TextStyle(fontSize: 12),
                                )),
                              ]),
                            ],
                          ),
                          const SizedBox(height: 24),
                          const Text(
                            "Daftar Anak",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          const SizedBox(height: 16),
                          ...data.childrens?.map((e) => ChildrenCard(data: e)
                                  .marginOnly(bottom: 8)) ??
                              []
                        ],
                      )),
            ],
          );
        }),
      ),
    );
  }
}

class ChildrenCard extends StatelessWidget {
  const ChildrenCard({super.key, required this.data, this.onTap});

  final Children data;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      onTap: () => onTap?.call(),
      margin: EdgeInsets.zero,
      color: Colors.white,
      borderColor: ColorPalletes.abuabuTerang,
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
