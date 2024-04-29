import 'package:boonda_mitra/common/widget/loading_widget.dart';
import 'package:boonda_mitra/config/state/app_state.dart';
import 'package:get/get.dart';

extension FutureAppStateExt<T> on Future<AppState<T>> {
  Future<AppState<T>> showLoading() async {
    return await Get.showOverlay(
        asyncFunction: () => this, loadingWidget: const LoadingWidget());
  }
}
