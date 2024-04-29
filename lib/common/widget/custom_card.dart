import 'package:flutter/material.dart';

import '../../config/style/core_theme.dart';

class CustomCard extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Widget child;
  final Color color;
  final Color? borderColor;
  final double radius;
  final Decoration? decoration;
  final List<BoxShadow>? boxShadow;
  final BorderRadius? borderRadius;
  final void Function()? onTap;
  final DecorationImage? backgroundImage;
  final bool useDefaultShadow;
  final Gradient? gradient;
  final Clip clipBehavior;

  const CustomCard({
    super.key,
    this.padding = const EdgeInsets.all(16),
    this.margin = const EdgeInsets.symmetric(horizontal: 16),
    this.child = const SizedBox(
      width: double.infinity,
    ),
    this.color = Colors.white,
    this.radius = 10,
    this.decoration,
    this.borderColor,
    this.boxShadow,
    this.borderRadius,
    this.onTap,
    this.backgroundImage,
    this.useDefaultShadow = true,
    this.gradient,
    this.clipBehavior = Clip.none,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: clipBehavior,
      margin: margin,
      decoration: decoration ??
          BoxDecoration(
            color: color,
            borderRadius: borderRadius ??
                BorderRadius.all(
                  Radius.circular(radius),
                ),
            border: borderColor != null
                ? Border.all(
                    color: borderColor!,
                    width: 1,
                  )
                : null,
            boxShadow: boxShadow ??
                (useDefaultShadow ? CoreTheme.defaultBoxShadow : null),
            gradient: gradient,
            image: backgroundImage,
          ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: borderRadius ??
              BorderRadius.all(
                Radius.circular(radius),
              ),
          child: Ink(
            padding: padding,
            child: child,
          ),
        ),
      ),
    );
  }
}
