import 'package:boonda_mitra/config/bindings/app_bindings.dart';
import 'package:boonda_mitra/config/state/app_state.dart';
import 'package:boonda_mitra/modules/master_data/orang_tua/model/orang_tua_response.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class OrangTuaServices extends GetxService {
  final dio = Get.find<Dio>();

  Future<AppState<List<OrangTuaResponse>>> getList(
      {String keyword = "", int page = 1, CancelToken? cancelToken}) async {
    return await dio.handleRequest(
      request: (helper) => helper.get("parents"),
      customSuccess: (data) {
        final list = data.data as List?;
        final payment =
            list?.map((e) => OrangTuaResponse.fromJson(e)).toList() ?? [];
        return AppState.success(payment,
            total: data.totalData, hasReachedMax: data.nextPage == null);
      },
    );
  }

  Future<AppState<OrangTuaResponse>> getDetail({required int id}) async {
    return await dio.handleRequest(
      request: (helper) => helper.get("parent/$id"),
      customSuccess: (data) {
        return AppState.success(OrangTuaResponse.fromJson(data.data));
      },
    );
  }
}
