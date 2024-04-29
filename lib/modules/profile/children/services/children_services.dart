import 'dart:io';

import 'package:boonda_mitra/common/utils/date_ext.dart';
import 'package:boonda_mitra/config/bindings/app_bindings.dart';
import 'package:boonda_mitra/config/state/app_state.dart';
import 'package:boonda_mitra/modules/order/model/order_response.dart';
import 'package:boonda_mitra/modules/profile/children/model/chart_response.dart';
import 'package:boonda_mitra/modules/profile/children/model/children_response.dart';
import 'package:boonda_mitra/modules/profile/children/model/growth_response.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart' hide FormData, MultipartFile;

class ChildrenServices extends GetxService {
  final dio = Get.find<Dio>();

  Future<AppState<List<ChildrenResponse>>> getChildren(
      {bool hasActiveClass = false}) async {
    return await dio.handleRequest(
      request: (helper) => helper.get("childrens",
          queryParameters: hasActiveClass ? {"has_active_class": 1} : {}),
      customSuccess: (data) {
        Iterable<dynamic> list = data.data;
        final news = List<ChildrenResponse>.from(
            list.map((e) => ChildrenResponse.fromJson(e)));

        return AppState.success(news);
      },
    );
  }

  Future<AppState<ChildrenResponse>> getDetailChildren(int id) async {
    return await dio.handleRequest(
      request: (helper) => helper.get("children/$id"),
      customSuccess: (data) =>
          AppState.success(ChildrenResponse.fromJson(data.data)),
    );
  }

  Future<AppState> postChildren(
    int id, {
    required String name,
    required String nik,
    required String gender,
    required DateTime birthDay,
    String? photo,
  }) async {
    return await dio.handleRequest(
      request: (helper) async {
        var map = {
          "name": name,
          "nik": nik,
          "gender": gender,
          "is_premature": 0,
          "medical_history": "",
          "birth_date": birthDay.format("yyyy-MM-dd"),
        };
        var file = File(photo ?? "");
        if (file.existsSync()) {
          map["photo"] = MultipartFile.fromBytes(await file.readAsBytes(),
              filename: "photo.jpg");
        }
        return helper.post("children/$id/update", data: FormData.fromMap(map));
      },
      customSuccess: (data) => const AppState.success(true),
    );
  }

  Future<AppState> postAddChildren(
      {required String name,
      required String nik,
      required String gender,
      required DateTime birthDay,
      String? pathFoto}) async {
    return await dio.handleRequest(
      request: (helper) async {
        var map = {
          "name": name,
          "nik": nik,
          "gender": gender,
          "is_premature": 0,
          "medical_history": "",
          "birth_date": birthDay.format("yyyy-MM-dd"),
        };
        var file = File(pathFoto ?? "");
        if (file.existsSync()) {
          map["photo"] = MultipartFile.fromBytes(await file.readAsBytes(),
              filename: "photo.jpg");
        }
        return helper.post("children", data: FormData.fromMap(map));
      },
      customSuccess: (data) => const AppState.success(true),
    );
  }

  Future<AppState<List<GrowthResponse>>> getGrowth(
      {String type = "weight",
      required int page,
      required int idChild,
      CancelToken? cancelToken}) async {
    return await dio.handleRequest(
      request: (helper) => helper.get("children/$idChild/growths",
          queryParameters: {"type": type, "limit": 20, "page": page},
          cancelToken: cancelToken),
      customSuccess: (data) {
        Iterable<dynamic> list = data.data;
        final news = List<GrowthResponse>.from(
            list.map((e) => GrowthResponse.fromJson(e)));

        return AppState.success(news,
            total: data.totalData, hasReachedMax: data.nextPage == null);
      },
    );
  }

  Future<AppState<ChartResponse>> getWeightChart(
      {required int idChildren}) async {
    return await dio.handleRequest(
      request: (helper) => helper.get("children/$idChildren/weight_chart"),
      customSuccess: (data) =>
          AppState.success(ChartResponse.fromJson(data.data)),
    );
  }

  Future<AppState<ChartResponse>> getHeightChart(
      {required int idChildren}) async {
    return await dio.handleRequest(
      request: (helper) => helper.get("children/$idChildren/height_chart"),
      customSuccess: (data) =>
          AppState.success(ChartResponse.fromJson(data.data)),
    );
  }

  Future<AppState<ChartResponse>> getHeadChart(
      {required int idChildren}) async {
    return await dio.handleRequest(
      request: (helper) => helper.get("children/$idChildren/head_chart"),
      customSuccess: (data) =>
          AppState.success(ChartResponse.fromJson(data.data)),
    );
  }

  Future<AppState<List<OrderResponse>>> getMutations(
      {required int idChildren}) async {
    return await dio.handleRequest(
      request: (helper) => helper.get("children/$idChildren/mutations"),
      customSuccess: (data) {
        Iterable<dynamic> list = data.data;
        final news = List<OrderResponse>.from(
            list.map((e) => OrderResponse.fromJson(e)));
        return AppState.success(news);
      },
    );
  }

  Future<AppState> postGrowth({
    String type = "weight",
    required int idChild,
    required int age,
    int? weight,
    int? height,
    int? headCircumtance,
    required DateTime measureDate,
  }) async {
    return await dio.handleRequest(
      request: (helper) => helper.post("children/$idChild/growth",
          data: FormData.fromMap({
            "type": type,
            "age": age,
            "weight": weight,
            "height": height,
            "head_circumtance": headCircumtance,
            "measure_date": measureDate.format("yyyy-MM-dd")
          }..removeWhere((key, value) => value == null || value == ""))),
      customSuccess: (data) {
        return const AppState.success(true);
      },
    );
  }
}
