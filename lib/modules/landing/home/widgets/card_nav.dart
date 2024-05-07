import 'package:boonda_mitra/common/style/color_pallete.dart';
import 'package:boonda_mitra/common/widget/custom_card.dart';
import 'package:flutter/material.dart';

class CardNav extends StatelessWidget {
  final Function? onTap;
  final String label;
  final IconData iconData;
  const CardNav({
    super.key,
    this.onTap,
    required this.label,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      padding: const EdgeInsets.all(8),
      borderColor: ColorPalletes.toscaTerang,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      useDefaultShadow: false,
      onTap: () {
        onTap?.call();
      },
      child: Row(
        children: [
          CustomCard(
              padding: const EdgeInsets.all(4),
              margin: const EdgeInsets.only(right: 8),
              borderRadius: BorderRadius.circular(4),
              color: ColorPalletes.toscaNormal,
              child: Icon(
                iconData,
                color: Colors.white,
                size: 14,
              )),
          Expanded(
              child: Text(
            label,
            style: const TextStyle(
              color: ColorPalletes.toscaNormal,
              fontSize: 10,
            ),
          )),
          const Icon(
            Icons.chevron_right,
            color: ColorPalletes.toscaNormal,
            size: 16,
          ),
        ],
      ),
    );
  }
}
