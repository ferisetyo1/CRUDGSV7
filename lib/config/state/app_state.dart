import 'package:boonda_mitra/common/widget/general_empty.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

import '../../common/style/color_pallete.dart';
import '../../common/widget/custom_card.dart';
import '../../common/widget/general_error.dart';
import '../../common/widget/no_connection.dart';

part 'app_state.freezed.dart';

@freezed
abstract class AppState<T> with _$AppState<T> {
  const AppState._();
  const factory AppState.initial() = _Initial;
  const factory AppState.noConnection() = _NoConnection;
  const factory AppState.loading() = _Loading;
  const factory AppState.success(T data, {int? total, bool? hasReachedMax}) =
      _Success;
  const factory AppState.empty() = _Empty;
  const factory AppState.error(String message) = _Error;

  bool isInitial() {
    return maybeWhen(
      orElse: () => false,
      initial: () => true,
    );
  }

  bool isLoading() {
    return maybeWhen(
      orElse: () => false,
      loading: () => true,
    );
  }

  bool isSuccess() {
    return maybeWhen(
      orElse: () => false,
      success: (_, __, ___) => true,
    );
  }

  bool isEmpty() {
    return maybeWhen(
      orElse: () => false,
      empty: () => true,
    );
  }

  bool isNoConnection() {
    return maybeWhen(
      orElse: () => false,
      noConnection: () => true,
    );
  }

  bool isError() {
    return maybeWhen(
      orElse: () => false,
      error: (_) => true,
    );
  }

  Widget loadingWidget() {
    return maybeWhen(
      orElse: () => const SizedBox(),
      loading: () => const Center(child: CircularProgressIndicator.adaptive()),
    );
  }

  Widget successWidget(
      Widget Function(T data, int total, bool? hasReachedMax) success) {
    return maybeWhen(
        orElse: () => const SizedBox(),
        success: (data, total, hasReachedMax) =>
            success(data, totalData, hasReachedMax));
  }

  Widget errorWidget() {
    return maybeWhen(
      orElse: () => const SizedBox(),
      error: (_) => Center(child: GeneralError(message: errorMessage)),
    );
  }

  Widget emptyWidget(String s) {
    return maybeWhen(
      orElse: () => const SizedBox(),
      empty: () => Center(child: GeneralEmpty(message: s)),
    );
  }

  Widget noConnectionWidget() {
    return maybeWhen(
      orElse: () => const SizedBox(),
      noConnection: () => const Center(child: NoConnectionError()),
    );
  }

  String get errorMessage => maybeWhen(
        orElse: () => "",
        error: (message) => message,
      );

  T? get data => maybeWhen(
        orElse: () => null,
        success: (data, _, __) => data,
      );

  int get totalData => maybeWhen(
        orElse: () => 0,
        success: (_, totalData, __) => totalData ?? 0,
      );

  bool get isReachedMax => maybeWhen(
        orElse: () => false,
        success: (_, __, hasReachedMax) => hasReachedMax ?? false,
      );

  showError() {
    final context = Get.context;
    if (context != null) {
      showDialog(
        context: context,
        builder: (dcontext) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomCard(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GeneralError(message: errorMessage),
                  const SizedBox(height: 44),
                  FilledButton(
                      style: const ButtonStyle(
                          minimumSize: MaterialStatePropertyAll(Size(279, 40)),
                          maximumSize: MaterialStatePropertyAll(Size(279, 40)),
                          backgroundColor:
                              MaterialStatePropertyAll(ColorPalletes.orange)),
                      onPressed: () {
                        Navigator.pop(dcontext);
                      },
                      child: const Text("Close"))
                ],
              ),
            ),
          ],
        ),
      );
    }
  }

  showNoConnection() {
    final context = Get.context;
    if (context != null) {
      showDialog(
        context: context,
        builder: (dcontext) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomCard(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const NoConnectionError(),
                  const SizedBox(height: 44),
                  FilledButton(
                      style: const ButtonStyle(
                          minimumSize: MaterialStatePropertyAll(Size(279, 40)),
                          maximumSize: MaterialStatePropertyAll(Size(279, 40)),
                          backgroundColor:
                              MaterialStatePropertyAll(ColorPalletes.orange)),
                      onPressed: () {
                        Navigator.pop(dcontext);
                      },
                      child: const Text("Close"))
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
}
