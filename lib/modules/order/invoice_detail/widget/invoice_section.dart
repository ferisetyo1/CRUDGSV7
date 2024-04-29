import 'package:boonda_mitra/common/utils/date_ext.dart';
import 'package:boonda_mitra/common/utils/widget_ext.dart';
import 'package:boonda_mitra/modules/order/model/order_response.dart';
import 'package:boonda_mitra/modules/order/model/payment_status_type.dart';
import 'package:boonda_mitra/modules/order/model/refund_status_type.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widget/simple_row.dart';
import 'section_details.dart';

class InvoiceSection extends StatelessWidget {
  const InvoiceSection({
    super.key,
    required this.item,
  });

  final OrderResponse item;

  @override
  Widget build(BuildContext context) {
    var paymentStatusType = PaymentStatusType.toPaymentStatusType(item.status);
    var refundStatusType =
        RefundStatusType.toRefundStatusType(item.statusRefund);
    return SectionDetails(label: "Invoice Details", childs: [
      SimpleRow(
          left: const Text("Payment Status"),
          crossAxisAlignment: CrossAxisAlignment.center,
          right: Text(
            paymentStatusType.show,
            style: TextStyle(color: paymentStatusType.textColor),
          ).withBgContainer(color: paymentStatusType.bgColor)),
      const SizedBox(height: 11),
      if (item.statusRefund != null)
        SimpleRow(
                left: const Text("Refund Status"),
                crossAxisAlignment: CrossAxisAlignment.center,
                right: Text(
                  refundStatusType.show,
                  style: TextStyle(color: refundStatusType.textColor),
                ).withBgContainer(color: refundStatusType.bgColor))
            .marginOnly(bottom: 11),
      SimpleRow(
          left: const Text("Invoice Date"),
          right: Text(item.createdAt?.format("dd/MM/yyyy") ?? "")),
      const SizedBox(height: 11),
      SimpleRow(
          left: const Text("Payment Method"),
          right: Text(item.paymentChannel?.paymentMethod?.name ?? "-")),
      const SizedBox(height: 11),
    ]);
  }
}
