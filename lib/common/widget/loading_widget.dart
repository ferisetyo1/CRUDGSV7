import 'package:flutter/material.dart';

import 'custom_card.dart';

class LoadingWidget extends StatefulWidget {
  const LoadingWidget({super.key});

  @override
  State<LoadingWidget> createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget>
    with SingleTickerProviderStateMixin<LoadingWidget> {
  late AnimationController controller;
  late Animation<int> animation;
  final loadingText = "Loading....";

  @override
  void initState() {
    controller = AnimationController(
        vsync: this,
        reverseDuration: kThemeAnimationDuration,
        duration: const Duration(seconds: 1));
    animation = IntTween(begin: 0, end: loadingText.length).animate(controller);
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomCard(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: SizedBox(
          width: 100,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircularProgressIndicator.adaptive(),
              const SizedBox(height: 16),
              AnimatedBuilder(
                animation: animation,
                builder: (context, child) =>
                    Text(loadingText.substring(0, animation.value)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
