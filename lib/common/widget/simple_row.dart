import 'package:flutter/material.dart';

class SimpleRow extends StatelessWidget {
  final Widget left;
  final Widget right;
  final EdgeInsetsGeometry? padding;
  final Color? bgColor;
  final CrossAxisAlignment? crossAxisAlignment;
  const SimpleRow(
      {super.key,
      required this.left,
      required this.right,
      this.padding,
      this.bgColor,
      this.crossAxisAlignment});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: bgColor,
      padding: padding,
      child: Row(
        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: left),
          Expanded(child: Align(alignment: Alignment.topRight, child: right))
        ],
      ),
    );
  }
}
