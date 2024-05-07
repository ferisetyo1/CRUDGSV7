import 'package:boonda_mitra/modules/order/list_order/list_order_bindings.dart';
import 'package:boonda_mitra/modules/order/list_order/list_order_page.dart';
import 'package:get/get.dart';

import '../../config/pages/auth_middleware.dart';
import 'invoice_detail/invoice_detail_bindings.dart';
import 'invoice_detail/invoice_detail_page.dart';

class OrderPages {
  static const invoice = "/invoice";
  static const list = "/list-invoice";
  static List<GetPage> get pages => [
        GetPage(
            name: invoice,
            page: () => const InvoiceDetailPage(),
            binding: InvoiceDetailBindings(),
            middlewares: [AuthMiddleware()]),
        GetPage(
            name: list,
            page: () => const ListOrderPage(),
            binding: ListOrderBindings(),
            middlewares: [AuthMiddleware()]),
      ];
}
