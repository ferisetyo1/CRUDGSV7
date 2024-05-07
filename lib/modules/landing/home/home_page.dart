import 'package:boonda_mitra/common/style/color_pallete.dart';
import 'package:boonda_mitra/common/utils/date_ext.dart';
import 'package:boonda_mitra/common/utils/string_ext.dart';
import 'package:boonda_mitra/common/utils/widget_ext.dart';
import 'package:boonda_mitra/common/widget/custom_card.dart';
import 'package:boonda_mitra/common/widget/general_empty.dart';
import 'package:boonda_mitra/modules/landing/home/home_controller.dart';
import 'package:boonda_mitra/modules/landing/home/widgets/absensi/absensi_rekap.dart';
import 'package:boonda_mitra/modules/landing/home/widgets/bar_section/bar_section.dart';
import 'package:boonda_mitra/modules/landing/home/widgets/card_nav.dart';
import 'package:boonda_mitra/modules/order/model/order_response.dart';
import 'package:boonda_mitra/modules/order/order_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../order/model/payment_status_type.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: RefreshIndicator(
        onRefresh: () async {
          controller.getNotifCount();
          controller.getOrders();
          controller.getRevenue();
        },
        child: ListView(
          children: [
            const SizedBox(height: 16),
            const BarSection(),
            const SizedBox(height: 24),
            const AbsensiRekap(),
            const SizedBox(height: 16),
            CardNav(
              label: "Lihat rekap aktivitas kelas",
              iconData: FontAwesomeIcons.childReaching,
              onTap: () {},
            ),
            const SizedBox(height: 16),
            CardNav(
              label: "Ada 2 anak yang masa langganannya akan habis",
              iconData: FontAwesomeIcons.circleInfo,
              onTap: () {},
            ),
            const Divider(
              height: 32,
              color: ColorPalletes.abuabuTerang,
            ).marginSymmetric(horizontal: 20),
            TotalPemasukan().marginSymmetric(horizontal: 20),
          ],
        ),
      )),
    );
  }
}

class TotalPemasukan extends GetView<HomeController> {
  const TotalPemasukan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Total Pemasukan",
          style: TextStyle(color: ColorPalletes.abuabuGelap, fontSize: 12),
        ),
        Obx(() {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              controller.revenueState.value.loadingWidget(),
              controller.revenueState.value.errorWidget(),
              controller.revenueState.value
                  .successWidget((data, total, hasReachedMax) => Text(
                        data.toIDRCurrency(symbol: "Rp "),
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      )),
            ],
          );
        }),
        const SizedBox(height: 16),
        Obx(() {
          return Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Transaksi terbaru",
                      style: TextStyle(
                          color: ColorPalletes.abuabuGelap, fontSize: 12),
                    ),
                  ),
                  Text(
                    "Lihat Semua",
                    style: TextStyle(
                        color: ColorPalletes.toscaNormal, fontSize: 12),
                  ).clickable(() {}, padding: EdgeInsets.all(0)),
                ],
              ),
              controller.orderState.value.loadingWidget(),
              controller.orderState.value.errorWidget(),
              controller.orderState.value
                  .successWidget((data, total, hasReachedMax) => Column(
                        children: [
                          if (total == 0) const GeneralEmpty(),
                          ...data.map((e) => CardOrder(
                                data: e,
                              ))
                        ],
                      ))
            ],
          );
        }),
      ],
    );
  }
}

class CardOrder extends StatelessWidget {
  final OrderResponse data;
  const CardOrder({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    var paymentStatusType = PaymentStatusType.toPaymentStatusType(data.status);
    return CustomCard(
      margin: const EdgeInsets.symmetric(vertical: 8),
      borderColor: ColorPalletes.abuabuTerang,
      onTap: () {
        Get.toNamed(OrderPages.invoice, parameters: {"id": data.id.toString()});
      },
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data.createdAt?.format("dd/MM/yyyy • HH:mm:ss") ?? "",
                        style: const TextStyle(
                            color: ColorPalletes.abuabuGelap, fontSize: 10)),
                    Text(
                      "Pesanan dari ${data.parent?.name}",
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Text(
                paymentStatusType.show,
                style:
                    TextStyle(color: paymentStatusType.textColor, fontSize: 10),
              ).withBgContainer(color: paymentStatusType.bgColor)
            ],
          ),
          const Divider(
            height: 32,
            color: ColorPalletes.abuabuTerang,
          ),
          Row(
            children: [
              const Expanded(
                  child: Text(
                "Total Pembayaran",
                style:
                    TextStyle(color: ColorPalletes.abuabuGelap, fontSize: 11),
              )),
              Text(
                int.tryParse(data.totalPrice ?? "")
                        ?.toIDRCurrency(symbol: "Rp") ??
                    "",
                style: TextStyle(
                    color: ColorPalletes.orange, fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
