import 'package:boonda_mitra/common/style/color_pallete.dart';
import 'package:boonda_mitra/common/utils/string_ext.dart';
import 'package:boonda_mitra/modules/order/model/order_response.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widget/simple_row.dart';
import 'section_details.dart';

class ItemSection extends StatelessWidget {
  const ItemSection({
    super.key,
    required this.item,
  });

  final OrderResponse item;

  @override
  Widget build(BuildContext context) {
    return SectionDetails(
        label: "Item Details",
        padding: const EdgeInsets.symmetric(vertical: 16),
        labelMargin: const EdgeInsets.symmetric(horizontal: 16),
        childs: [
          const SizedBox(
            height: 9.5,
          ),
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
                          const SizedBox(height: 8),
                          ...e.items
                                  ?.map((e) => SimpleRow(
                                        left:
                                            Text(e.name?.capitalizeFirst ?? ""),
                                        right: Text(
                                          e.totalPrice
                                                  ?.toString()
                                                  .toIDRCurrency(
                                                      symbol: "Rp ") ??
                                              "",
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 8),
                                      ))
                                  .toList() ??
                              [],
                          const SizedBox(height: 8),
                        ],
                      ))
                  .toList() ??
              [],
          Visibility(
            visible: item.voucherName != null,
            child: SimpleRow(
              left: Text(item.voucherName ?? ""),
              right: Text(
                "-${item.totalDiscount?.toIDRCurrency(symbol: "Rp ")}",
                style: const TextStyle(color: ColorPalletes.orange),
              ),
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            ),
          ),
          SimpleRow(
            left: const Text(
              "Total Price",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            right: Text(
              item.totalPrice?.toIDRCurrency(symbol: "Rp ") ?? "",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            bgColor: ColorPalletes.merahTerang,
          )
        ]);
  }
}
