import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class LocationHelper {
  static Future<bool> checkLocationPermission() async {
    final permission = await Geolocator.checkPermission();
    final permissionStatus = [
      LocationPermission.always,
      LocationPermission.whileInUse
    ];
    if (permissionStatus.contains(permission)) {
      return true;
    }

    if (permission == LocationPermission.deniedForever) {
      Get.snackbar(
        "terjadi_kesalahan".tr,
        "Akses Lokasi telah disable permanent, silahkan cek pengaturan",
        onTap: (snack) {
          Geolocator.openAppSettings();
        },
      );
      return false;
    } else {
      final newPermission = await Geolocator.requestPermission();
      if (permissionStatus.contains(newPermission)) {
        return true;
      } else {
        Get.snackbar("terjadi_kesalahan".tr, "Gagal mendapatkan akses lokasi");
        return false;
      }
    }
  }

  static Future<Position?> getLocation() async {
    final permission = await Geolocator.checkPermission();
    final permissionStatus = [
      LocationPermission.always,
      LocationPermission.whileInUse
    ];
    if (permissionStatus.contains(permission)) {
      final location = await Geolocator.getCurrentPosition();
      return location;
    }
    return null;
  }
}
