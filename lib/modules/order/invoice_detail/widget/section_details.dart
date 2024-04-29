import 'package:boonda_mitra/common/style/color_pallete.dart';
import 'package:flutter/material.dart';

class SectionDetails extends StatelessWidget {
  final String? label;
  final List<Widget> childs;
  final EdgeInsetsGeometry? padding;
  final EdgeInsets? labelMargin;
  const SectionDetails({
    super.key,
    this.label,
    required this.childs,
    this.padding,
    this.labelMargin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: padding ?? const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (label != null)
            Container(
              margin: labelMargin,
              child: Text(
                label ?? "",
                style: const TextStyle(
                  color: ColorPalletes.abuabuMedium,
                  fontSize: 12,
                ),
              ),
            ),
          ...childs
        ],
      ),
    );
  }
}
