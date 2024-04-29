import 'package:boonda_mitra/common/style/color_pallete.dart';
import 'package:boonda_mitra/common/utils/date_ext.dart';
import 'package:boonda_mitra/modules/order/model/order_response.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widget/simple_row.dart';
import 'section_details.dart';

class ProgramSection extends StatelessWidget {
  const ProgramSection({
    super.key,
    required this.item,
  });

  final OrderResponse item;

  @override
  Widget build(BuildContext context) {
    return SectionDetails(
        label: "Program Details",
        padding: const EdgeInsets.symmetric(vertical: 16),
        labelMargin: const EdgeInsets.symmetric(horizontal: 16),
        childs: [
          const SizedBox(height: 9.5),
          SimpleRow(
            left: const Text("Number of Child"),
            right: Text(item.childrenItemDetails?.length.toString() ?? "0"),
            padding: const EdgeInsets.symmetric(horizontal: 16),
          ),
          const SizedBox(height: 11),
          ...item.childrenItemDetails
                  ?.map((e) => Column(
                        children: [
                          Container(
                            width: double.infinity,
                            color: ColorPalletes.toscaTerang,
                            child: Text(
                              e.name?.capitalize ?? "",
                            ).marginSymmetric(horizontal: 16, vertical: 8),
                          ),
                          const SizedBox(height: 11),
                          SimpleRow(
                            left: const Text("Age"),
                            right: Text(
                              e.programDetail?.age ?? "-",
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                          ),
                          const SizedBox(height: 11),
                          SimpleRow(
                            left: const Text("Program"),
                            right: Text(
                              e.programDetail?.program ?? "-",
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                          ),
                          const SizedBox(height: 11),
                          SimpleRow(
                              left: const Text("Start Date"),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              right: Text(
                                  item.startDate?.format("dd/MM/yyyy") ?? "")),
                          const SizedBox(height: 11),
                          SimpleRow(
                              left: const Text("End Date"),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              right: Text(
                                  item.endDate?.format("dd/MM/yyyy") ?? "")),
                          const SizedBox(height: 11),
                        ],
                      ))
                  .toList() ??
              [],
        ]);
  }
}
