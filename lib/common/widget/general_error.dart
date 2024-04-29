import 'package:boonda_mitra/common/style/image_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GeneralError extends StatelessWidget {
  const GeneralError({
    super.key,
    required this.message,
  });
  final String message;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(ImageAssetPath.generalErrorIllust),
        const SizedBox(height: 8),
        Text(message)
      ],
    );
  }
}
