import 'package:boonda_mitra/common/style/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum PaymentStatusType {
  waitingPayment(
      name: "WAITING_PAYMENT",
      show: "Menunggu Pembayaran",
      textColor: ColorPalletes.kuningNormal,
      bgColor: ColorPalletes.kuningTerang,
      visibilityButtonReorder: false,
      visibilityButtonCancel: true,
      visibilityButtonBayar: true,
      visibilityButtonUnduhInvoice: false),
  paid(
      name: "PAID",
      show: "Dibayar",
      textColor: ColorPalletes.kuningNormal,
      bgColor: ColorPalletes.kuningTerang,
      visibilityButtonReorder: false,
      visibilityButtonReschedule: true),
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
    show: "Disetujui",
    textColor: ColorPalletes.toscaNormal,
    bgColor: ColorPalletes.toscaTerang,
  ),
  rejected(
      name: "REJECTED",
      show: "Ditolak",
      textColor: ColorPalletes.merahNormal,
      bgColor: ColorPalletes.merahTerang,
      visibilityButtonRefund: true,
      visibilityButtonReorder: false),
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
      visibilityButtonCancel: false,
      visibilityButtonReorder: false,
      visibilityButtonBayar: false,
      visibilityButtonRefund: false,
      visibilityButtonReschedule: false,
      visibilityButtonUnduhInvoice: false);

  const PaymentStatusType(
      {required this.name,
      required this.show,
      required this.textColor,
      required this.bgColor,
      this.visibilityButtonReorder = true,
      this.visibilityButtonCancel = false,
      this.visibilityButtonBayar = false,
      this.visibilityButtonUnduhInvoice = true,
      this.visibilityButtonRefund = false,
      this.visibilityButtonReschedule = false});

  final String name;
  final String show;
  final Color textColor;
  final Color bgColor;
  final bool visibilityButtonReorder;
  final bool visibilityButtonCancel;
  final bool visibilityButtonBayar;
  final bool visibilityButtonUnduhInvoice;
  final bool visibilityButtonReschedule;
  final bool visibilityButtonRefund;

  bool get visibleButton =>
      visibilityButtonBayar ||
      visibilityButtonCancel ||
      visibilityButtonRefund ||
      visibilityButtonReorder ||
      visibilityButtonReschedule ||
      visibilityButtonUnduhInvoice;

  static PaymentStatusType toPaymentStatusType(String? s) {
    return PaymentStatusType.values
            .firstWhereOrNull((element) => element.name == s) ??
        PaymentStatusType.none;
  }
}
