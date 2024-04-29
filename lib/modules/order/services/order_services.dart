import 'package:boonda_mitra/common/utils/date_ext.dart';
import 'package:boonda_mitra/config/bindings/app_bindings.dart';
import 'package:boonda_mitra/modules/order/model/detail_price_response.dart';
import 'package:boonda_mitra/modules/order/model/order_response.dart';
import 'package:boonda_mitra/modules/order/model/payment_method_response.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../../config/state/app_state.dart';

class OrderServices extends GetxService {
  final dio = Get.find<Dio>();

  Future<AppState<List<PaymentMethodResponse>>> getListPayment() async {
    return await dio.handleRequest(
      request: (helper) => helper.get("payment_methods"),
      customSuccess: (data) {
        Iterable<dynamic> list = data.data;
        final payment =
            list.map((e) => PaymentMethodResponse.fromJson(e)).toList();
        return AppState.success(payment);
      },
    );
  }

  Future<AppState<DetailPriceResponse>> postPriceDetailOrderDaycare(
      {required int id,
      required List<Map<String, dynamic>> childrens,
      required int duration,
      int? voucherId,
      bool isUsePoint = false,
      CancelToken? cancelToken}) async {
    final data = {
      "duration_id": duration,
      "childrens": childrens,
      "voucher_id": voucherId,
      "is_use_point": isUsePoint
    };
    data.removeWhere((key, value) => value == null);
    return await dio.handleRequest(
      request: (helper) => helper.post("daycare/$id/price_detail",
          data: data, cancelToken: cancelToken),
      customSuccess: (data) {
        return AppState.success(DetailPriceResponse.fromJson(data.data));
      },
    );
  }

  Future<AppState<int>> postOrderDaycare(
      {required int id,
      required List<Map<String, dynamic>> childrens,
      required int duration,
      required DateTime startDate,
      required int paymentChannelId,
      String specialRequest = "",
      int voucherId = -1,
      bool isUsePoint = false}) async {
    return await dio.handleRequest(
      request: (helper) => helper.post("daycare/$id/order", data: {
        "duration_id": duration,
        "childrens": childrens,
        "start_date": startDate.format("yyyy-MM-dd"),
        "payment_channel_id": paymentChannelId,
        "special_request": specialRequest,
        "is_use_point": isUsePoint
      }),
      customSuccess: (data) {
        int id = data.data?["id"] ?? -1;
        return AppState.success(id);
      },
    );
  }

  Future<AppState<List<OrderResponse>>> getOrders(
      {required int page,
      String status = "",
      String startDate = "",
      CancelToken? cancelToken}) async {
    return await dio.handleRequest(
      request: (helper) => helper.get("transactions",
          queryParameters: {
            "page": page,
            "limit": 20,
            "status": status,
            "start_date": startDate
          },
          cancelToken: cancelToken),
      customSuccess: (data) {
        Iterable<dynamic> list = data.data;
        final payment = list.map((e) => OrderResponse.fromJson(e)).toList();
        return AppState.success(payment,
            total: data.totalData, hasReachedMax: data.nextPage == null);
      },
    );
  }

  Future<AppState<OrderResponse>> getOrder({required int id}) async {
    return await dio.handleRequest(
      request: (helper) => helper.get("order/$id"),
      customSuccess: (data) {
        return AppState.success(OrderResponse.fromJson(data.data));
      },
    );
  }

  Future<AppState> cancelOrder({required int id}) async {
    return await dio.handleRequest(
      request: (helper) => helper.delete("order/$id"),
      customSuccess: (data) {
        return const AppState.success(false);
      },
    );
  }

  Future<AppState> refund(
      {required int id,
      String? bankName,
      String? bankAccName,
      String? noRekening,
      String? reason}) async {
    return await dio.handleRequest(
      request: (helper) => helper.post("order/$id/refund", data: {
        "bank_account_name": bankAccName,
        "bank_name": bankName,
        "bank_account_number": noRekening,
        "reason": reason
      }),
      customSuccess: (data) {
        return const AppState.success(false);
      },
    );
  }
}
