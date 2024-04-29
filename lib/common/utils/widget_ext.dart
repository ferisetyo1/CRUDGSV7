import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../style/color_pallete.dart';

extension WdigetExt on Widget {
  Widget clickable(Function onTap, {EdgeInsets? padding}) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: ColorPalletes.toscaTerang,
        borderRadius: BorderRadius.circular(8),
        onTap: () => onTap(),
        child: Ink(
          padding: padding ?? const EdgeInsets.all(4),
          child: this,
        ),
      ),
    );
  }

  Widget prefix(Widget widget, {double spacing = 8}) {
    return Row(
      children: [widget, SizedBox(width: spacing), this],
    );
  }

  Widget withBgContainer(
      {required Color color,
      double borderRadius = 16,
      double? width,
      EdgeInsets? contentPadding}) {
    return Container(
      padding: contentPadding ??
          const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
      width: width,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(borderRadius)),
      child: this,
    );
  }

  Widget withDotBgContainer(
      {required Color color,
      double borderRadius = 16,
      double? width,
      EdgeInsets? contentPadding}) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(16),
      strokeWidth: 1,
      color: ColorPalletes.toscaNormal,
      dashPattern: const [10, 5],
      child: Container(
        padding: contentPadding ??
            const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
        width: width,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(borderRadius)),
        child: Center(child: this),
      ),
    );
  }

  Widget withPrefixIcon(Icon icon) {
    return Row(
      children: [icon, this],
    );
  }

  Widget withTooltip(String msg) {
    return Tooltip(
        triggerMode: TooltipTriggerMode.tap,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: const Border.fromBorderSide(
                BorderSide(color: ColorPalletes.abuabuTerang))),
        textStyle: const TextStyle(color: Colors.black),
        message: msg,
        child: this);
  }
}
