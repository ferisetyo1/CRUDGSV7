import 'package:boonda_mitra/common/style/color_pallete.dart';
import 'package:boonda_mitra/common/style/image_asset.dart';
import 'package:boonda_mitra/modules/order/invoice_detail/widget/children_section.dart';
import 'package:boonda_mitra/modules/order/invoice_detail/widget/invoice_section.dart';
import 'package:boonda_mitra/modules/order/invoice_detail/widget/items_section.dart';
import 'package:boonda_mitra/modules/order/invoice_detail/widget/program_section.dart';
import 'package:boonda_mitra/modules/order/invoice_detail/widget/section_details.dart';
import 'package:boonda_mitra/modules/order/model/order_response.dart';
import 'package:boonda_mitra/modules/order/model/payment_status_type.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './invoice_detail_controller.dart';

class InvoiceDetailPage extends GetView<InvoiceDetailController> {
  const InvoiceDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final status = PaymentStatusType.toPaymentStatusType(
          controller.order.value.data?.status);
      return Scaffold(
        appBar: AppBar(
          title: const Text('Invoice Daycare'),
        ),
        persistentFooterButtons: status.visibleButton
            ? [
                Column(
                  children: [
                    Visibility(
                      visible: status.visibilityButtonCancel,
                      child: FilledButton(
                              style: const ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      ColorPalletes.orange)),
                              onPressed: () {
                                controller.cancel();
                              },
                              child: const Text("Batalkan"))
                          .marginOnly(bottom: 8),
                    ),
                    Visibility(
                      visible: status.visibilityButtonUnduhInvoice,
                      child: FilledButton(
                          onPressed: () {}, child: const Text("Unduh Invoice")),
                    ),
                  ],
                ).marginSymmetric(vertical: 8, horizontal: 20)
              ]
            : null,
        body: RefreshIndicator(onRefresh: () async {
          controller.getOrder();
        }, child: Obx(() {
          return ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              controller.order.value.loadingWidget(),
              controller.order.value.errorWidget(),
              controller.order.value.noConnectionWidget(),
              controller.order.value
                  .successWidget((data, total, hasReachedMax) => CardInvoice(
                        data: data,
                      ).marginOnly(bottom: 16)),
            ],
          );
        })),
      );
    });
  }
}

class CardInvoice extends StatelessWidget {
  final OrderResponse? data;
  const CardInvoice({
    super.key,
    this.data,
  });

  @override
  Widget build(BuildContext context) {
    if (data == null) {
      return const SizedBox();
    }
    return Container(
      decoration: BoxDecoration(
          border: const Border.fromBorderSide(
              BorderSide(color: ColorPalletes.abuabuTerang)),
          borderRadius: BorderRadius.circular(8),
          color: Colors.white),
      child: Column(
        children: [
          const SizedBox(height: 16),
          Image.asset(ImageAssetPath.boondaInvoice),
          const SizedBox(height: 16),
          Text(
            data?.invoiceNumber ?? "",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: ColorPalletes.abuabuGelap,
            ),
          ),
          const SizedBox(height: 16),
          const Divider(
            height: 1,
            thickness: 1,
            color: ColorPalletes.abuabuTerang,
          ),
          InvoiceSection(item: data!),
          const Divider(
            height: 1,
            thickness: 1,
            color: ColorPalletes.abuabuTerang,
          ),
          ItemSection(item: data!),
          const Divider(
            height: 1,
            thickness: 1,
            color: ColorPalletes.abuabuTerang,
          ),
          ProgramSection(item: data!),
          const Divider(
            height: 1,
            thickness: 1,
            color: ColorPalletes.abuabuTerang,
          ),
          SectionDetails(childs: [
            const Text("Special Request"),
            const SizedBox(height: 8),
            Text(
              data?.specialRequest ?? "-",
              style: const TextStyle(color: ColorPalletes.abuabuGelap),
            )
          ]),
          const Divider(
            height: 1,
            thickness: 1,
            color: ColorPalletes.abuabuTerang,
          ),
          ChildrenSection(item: data!),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
