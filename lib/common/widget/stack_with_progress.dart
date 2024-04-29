import 'package:boonda_mitra/common/widget/loading_widget.dart';
import 'package:boonda_mitra/config/state/app_state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StackWithProgress extends StatelessWidget {
  final Widget child;
  final List<Rx<AppState>> states;

  const StackWithProgress(
      {super.key, required this.states, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Obx(() => states.firstWhereOrNull(
                    (Rx<AppState> element) => element.value.isLoading()) !=
                null
            ? Stack(
                children: [
                  ModalBarrier(
                    dismissible: false,
                    color: Colors.grey.withOpacity(0.7),
                    barrierSemanticsDismissible: false,
                  ),
                  const LoadingWidget()
                ],
              )
            : const SizedBox())
      ],
    );
  }
}
