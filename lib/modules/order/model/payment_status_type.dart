import 'package:boonda_mitra/common/style/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum PaymentStatusType {
  waitingPayment(
      name: "WAITING_PAYMENT",
      show: "Menunggu Pembayaran",
      textColor: ColorPalletes.kuningNormal,
      bgColor: ColorPalletes.kuningTerang,
      visibilityButtonUnduhInvoice: false),
  paid(
      name: "PAID",
      show: "Dibayar",
      textColor: ColorPalletes.kuningNormal,
      bgColor: ColorPalletes.kuningTerang,
      visibilityButtonAccept: true,
      visibilityButtonReject: true,
      visibilityButtonUnduhInvoice: false),
  expired(
    name: "EXPIRED",
    show: "Expired",
    textColor: ColorPalletes.toscaNormal,
    bgColor: ColorPalletes.toscaTerang,
  ),
  canceled(
    name: "CANCELED",
    show: "Dibatalkan",
    textColor: ColorPalletes.merahNormal,
    bgColor: ColorPalletes.merahTerang,
    visibilityButtonUnduhInvoice: false,
  ),
  approved(
    name: "APPROVED",
    show: "Diterima",
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
      visibilityButtonAccept: false,
      visibilityButtonReject: false,
      visibilityButtonUnduhInvoice: false);

  const PaymentStatusType(
      {required this.name,
      required this.show,
      required this.textColor,
      required this.bgColor,
      this.visibilityButtonUnduhInvoice = true,
      this.visibilityButtonAccept = false,
      this.visibilityButtonReject = false});

  final String name;
  final String show;
  final Color textColor;
  final Color bgColor;
  final bool visibilityButtonAccept;
  final bool visibilityButtonReject;
  final bool visibilityButtonUnduhInvoice;

  bool get visibleButton =>
      visibilityButtonReject ||
      visibilityButtonAccept ||
      visibilityButtonUnduhInvoice;

  static PaymentStatusType toPaymentStatusType(String? s) {
    return PaymentStatusType.values
            .firstWhereOrNull((element) => element.name == s) ??
        PaymentStatusType.none;
  }
}
