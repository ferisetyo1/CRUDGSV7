import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Permissions {
  static Future<bool> requestPermissionStorage(BuildContext context) async {
    if (Platform.isAndroid || Platform.isIOS) {
      if (Platform.isIOS) {
        if (!await Permissions.checkPermission(
            context, Permission.photosAddOnly.value, false)) {
          return false;
        }
      } else {
        final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
        AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
        if ((androidInfo.version.sdkInt) >= 33) {
        } else {
          var storage = await Permissions.checkPermission(
            // ignore: use_build_context_synchronously
            context,
            Permission.storage.value,
          );
          if (!storage) {
            return false;
          }
        }
      }
    }
    return true;
  }

  static Future<bool> checkPermission(
    BuildContext context,
    int value, [
    bool isShowPermissionPage = true,
  ]) async {
    final status = await Permission.byValue(value).status;
    if (status.isGranted || status.isLimited) {
      return true;
    }
    final bool? shouldRequestPermission = await showPermissionConfirmDialog(
      // ignore: use_build_context_synchronously
      context,
      value,
      isShowPermissionPage,
    );
    if (shouldRequestPermission != null && shouldRequestPermission) {
      final isGranted = await Permission.byValue(value).request().isGranted;
      return isGranted;
    }
    return shouldRequestPermission ?? false;
  }

  static Future<bool> checkPermissionSetBefore(int value) async {
    Future<SharedPreferences> prefs0 = SharedPreferences.getInstance();
    SharedPreferences prefs = await prefs0;
    final hasPermissionSetBefore = prefs.getBool("permission$value");
    return hasPermissionSetBefore ?? false;
  }

  static Future<bool> setLocalPermission(int value) async {
    Future<SharedPreferences> prefs0 = SharedPreferences.getInstance();
    SharedPreferences prefs = await prefs0;
    return await prefs.setBool("permission$value", true);
  }

  static Future<bool?> showPermissionConfirmDialog(BuildContext context, value,
      [bool isShowPermissionPage = true]) async {
    if (!await checkPermissionSetBefore(value)) {
      await setLocalPermission(value);
      return true;
    }

    void closeDialog() {
      Navigator.of(context).pop(false);
    }

    void getPermission() async {
      Navigator.of(context).pop(false);
      openAppSettings();
    }

    return showDialog<bool>(
      // ignore: use_build_context_synchronously
      context: context,
      builder: (context) {
        var findPermission = PermissionEnum.findPermission(value);
        return Platform.isIOS
            ? CupertinoAlertDialog(
                title: Text("Request Permission ${findPermission.name}"),
                content: Text(findPermission.desc),
                actions: <Widget>[
                  CupertinoDialogAction(
                    onPressed: closeDialog,
                    child: const Text("Close"),
                  ),
                  CupertinoDialogAction(
                    onPressed: getPermission,
                    child: const Text("Buka Pengaturan"),
                  ),
                ],
              )
            : AlertDialog(
                title: Text(findPermission.name),
                content: Text(findPermission.desc),
                actions: <Widget>[
                  TextButton(
                    onPressed: closeDialog,
                    child: const Text("Close",
                        style: TextStyle(
                          color: Colors.black,
                        )),
                  ),
                  const VerticalDivider(),
                  TextButton(
                    onPressed: getPermission,
                    child: const Text("Buka Pengaturan",
                        style: TextStyle(
                          color: Colors.black,
                        )),
                  )
                ],
              );
      },
    );
  }
}

enum PermissionEnum {
  camera(
      1, "Camera", "BAF membutuhkan akses camera untuk menjalankan fitur ini"),
  storage(15, "Penyimpanan",
      "BAF membutuhkan akses penyimpanan untuk menjalankan fitur ini"),
  photosAddOnly(10, "Penyimpanan",
      "BAF membutuhkan akses penyimpanan  untuk menjalankan fitur ini"),
  none(-1, "", "");

  const PermissionEnum(this.value, this.name, this.desc);

  final int value;
  final String name;
  final String desc;

  static PermissionEnum findPermission(int value) {
    return PermissionEnum.values
            .where((element) => element.value == value)
            .firstOrNull ??
        none;
  }
}
