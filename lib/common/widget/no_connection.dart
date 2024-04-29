import 'package:boonda_mitra/common/style/color_pallete.dart';
import 'package:boonda_mitra/common/style/image_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NoConnectionError extends StatelessWidget {
  const NoConnectionError({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(ImageAssetPath.noConnection),
        const SizedBox(height: 8),
        const Text(
          "Tidak ada koneksi",
          style: TextStyle(fontSize: 16),
        ),
        const Text(
          "Silahkan periksa koneksi perangkat",
          style: TextStyle(fontSize: 12, color: ColorPalletes.abuabuGelap),
        )
      ],
    );
  }
}
