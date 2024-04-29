import 'package:boonda_mitra/config/state/app_state.dart';
import 'package:boonda_mitra/modules/order/model/order_response.dart';
import 'package:boonda_mitra/modules/profile/children/model/chart_response.dart';
import 'package:boonda_mitra/modules/profile/children/model/children_response.dart';
import 'package:boonda_mitra/modules/profile/children/services/children_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailAnakController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final services = Get.find<ChildrenServices>();
  final state = const AppState<ChildrenResponse>.initial().obs;
  final stateMutations = const AppState<List<OrderResponse>>.initial().obs;
  final stateWeight = const AppState<ChartResponse>.initial().obs;
  final stateHeight = const AppState<ChartResponse>.initial().obs;
  final stateHead = const AppState<ChartResponse>.initial().obs;
  late final TabController tabController;
  late int id;

  @override
  void onInit() {
    id = int.tryParse(Get.parameters["id_anak"] ?? "") ?? 0;
    tabController = TabController(length: 3, vsync: this);
    getChildren();
    getChart();
    getMuations();
    super.onInit();
  }

  getChildren() async {
    state.value = const AppState.loading();
    final resp = await services.getDetailChildren(id);
    state.value = resp;
  }

  Future<void> getChart() async {
    stateWeight.value = const AppState.loading();
    stateHeight.value = const AppState.loading();
    stateHead.value = const AppState.loading();
    stateWeight.value = await services.getWeightChart(idChildren: id);
    stateHeight.value = await services.getHeightChart(idChildren: id);
    stateHead.value = await services.getHeadChart(idChildren: id);
  }

  Future<void> getMuations() async {
    stateMutations.value = const AppState.loading();
    stateMutations.value = await services.getMutations(idChildren: id);
  }
}
