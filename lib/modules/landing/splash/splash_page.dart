import 'package:boonda_mitra/common/style/color_pallete.dart';
import 'package:boonda_mitra/modules/landing/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    const String imageUrl =
        'https://api-master.boonda.id/file/daycare/splashscreen/splashscreen_parent.png'; // Ganti dengan URL gambar Anda
    return Scaffold(
      backgroundColor: ColorPalletes.toscaNormal,
      body: CachedNetworkImage(
        imageUrl: imageUrl,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
        // placeholder: (context, url) => const SizedBox(
        //   width: 50,
        //   height: 50,
        //   child: CircularProgressIndicator.adaptive(),
        // ), // Tampilan loading sementara
        progressIndicatorBuilder: (context, url, progress) =>
            const Center(child: CircularProgressIndicator.adaptive()),
        errorWidget: (context, url, error) {
          return FutureBuilder(
              future: Future.delayed(const Duration(seconds: 1), () {
                controller.checkFirstInstall();
              }),
              builder: (context, _) {
                return const Icon(Icons.error);
              });
        }, // Tampilan jika gambar gagal dimuat
        imageBuilder: (context, imageProvider) {
          return FutureBuilder(
              future: Future.delayed(const Duration(milliseconds: 500), () {
                controller.checkFirstInstall();
              }),
              builder: (context, _) {
                return Image(
                  image: imageProvider,
                  fit: BoxFit.cover,
                );
              });
        },
      ),
    );
  }
}
