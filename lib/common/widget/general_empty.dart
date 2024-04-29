import 'package:boonda_mitra/common/style/image_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GeneralEmpty extends StatelessWidget {
  const GeneralEmpty({
    super.key,
    this.message,
  });
  final String? message;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(ImageAssetPath.generalEmptyIllust),
        const SizedBox(height: 8),
        Text(message ?? "Data belum tersedia")
      ],
    );
  }
}
