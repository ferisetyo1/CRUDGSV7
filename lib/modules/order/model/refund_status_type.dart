import 'package:boonda_mitra/common/style/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum RefundStatusType {
  expired(
    name: "PENDING",
    show: "Pending",
    textColor: ColorPalletes.kuningNormal,
    bgColor: ColorPalletes.kuningTerang,
  ),
  approved(
    name: "ACCEPTED",
    show: "Disetujui",
    textColor: ColorPalletes.toscaNormal,
    bgColor: ColorPalletes.toscaTerang,
  ),
  rejected(
    name: "REJECTED",
    show: "Ditolak",
    textColor: ColorPalletes.merahNormal,
    bgColor: ColorPalletes.merahTerang,
  ),
  refunded(
    name: "REFUNDED",
    show: "Direfund",
    textColor: ColorPalletes.toscaNormal,
    bgColor: ColorPalletes.toscaTerang,
  ),
  none(
    name: "NONE",
    show: "Tidak Diketahui",
    textColor: ColorPalletes.merahNormal,
    bgColor: ColorPalletes.merahTerang,
  );

  const RefundStatusType({
    required this.name,
    required this.show,
    required this.textColor,
    required this.bgColor,
  });

  final String name;
  final String show;
  final Color textColor;
  final Color bgColor;

  static RefundStatusType toRefundStatusType(String? s) {
    return RefundStatusType.values
            .firstWhereOrNull((element) => element.name == s) ??
        RefundStatusType.none;
  }
}
