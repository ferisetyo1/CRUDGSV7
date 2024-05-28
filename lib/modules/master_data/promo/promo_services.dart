import 'package:boonda_mitra/common/utils/date_ext.dart';
import 'package:boonda_mitra/config/bindings/app_bindings.dart';
import 'package:boonda_mitra/config/state/app_state.dart';
import 'package:boonda_mitra/modules/order/model/voucher.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide FormData, MultipartFile;

class PromoServices extends GetxService {
  final dio = Get.find<Dio>();

  Future<AppState<List<Voucher>>> getPromo(int page, CancelToken? token) async {
    return await dio.handleRequest(
      request: (helper) => helper
          .get("vouchers", cancelToken: token, queryParameters: {"page": page}),
      customSuccess: (data) {
        Iterable<dynamic> list = data.data;
        final payment = list.map((e) => Voucher.fromJson(e)).toList();
        return AppState.success(payment,
            total: data.totalData, hasReachedMax: data.nextPage == null);
      },
    );
  }

  Future<AppState<Voucher>> getPromoDetail(int id) async {
    return await dio.handleRequest(
      request: (helper) => helper.get("voucher/$id"),
      customSuccess: (data) {
        return AppState.success(Voucher.fromJson(data.data));
      },
    );
  }

  Future<AppState> delete(int id) async {
    return await dio.handleRequest(
      request: (helper) => helper.delete("voucher/$id"),
      customSuccess: (data) {
        return const AppState.success(true);
      },
    );
  }

  Future<AppState> buatPromo(
      {String? path,
      String? title,
      String? desc,
      String? promoCode,
      String? type,
      int? minimumPrice,
      int? value,
      int? maximumPrice,
      DateTime? startDate,
      DateTime? endDate,
      int? maximumUser,
      bool? isOnlyNewUser}) async {
    Map<String, dynamic> map = {
      "title": title,
      "description": desc,
      "promo_code": promoCode,
      "type": type,
      "minimum_price": minimumPrice,
      "value": value,
      "maximum_promo": maximumPrice,
      "start_date": startDate?.format("yyyy-MM-dd"),
      "end_date": endDate?.format("yyyy-MM-dd"),
      "maximum_user": maximumUser,
      "is_only_new_user": (isOnlyNewUser ?? false) ? 1 : 0
    };
    if ((path ?? "") != "") {
      map["image"] = MultipartFile.fromString(path ?? "");
    }
    debugPrint(map.toString());
    map.removeWhere((e, v) => v == null);
    final form = FormData.fromMap(map);
    return await dio.handleRequest(
      request: (helper) => helper.post("voucher", data: form),
      customSuccess: (data) {
        return const AppState.success(true);
      },
    );
  }
}
