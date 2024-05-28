import 'package:boonda_mitra/common/utils/permissions.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

Future<XFile?> showImagePickerDialog(BuildContext context) async {
  return await showDialog<XFile?>(
    context: context,
    builder: (context) => AlertDialog(
      title: Row(
        children: [
          const Expanded(child: Text("Pilih Media")),
          IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.close))
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: const Icon(Icons.camera_alt),
            title: const Text("Kamera"),
            onTap: () async {
              if (!await Permissions.checkPermission(
                  context, Permission.camera.value)) {
                return;
              }
              final result = await ImagePicker()
                  .pickImage(source: ImageSource.camera, imageQuality: 25);
              // ignore: use_build_context_synchronously
              Navigator.pop(context, result);
            },
          ),
          ListTile(
            leading: const Icon(Icons.photo),
            title: const Text("Galeri"),
            onTap: () async {
              if (!await Permissions.requestPermissionStorage(context)) {
                return;
              }
              final result = await ImagePicker()
                  .pickImage(source: ImageSource.gallery, imageQuality: 25);
              // ignore: use_build_context_synchronously
              Navigator.pop(context, result);
            },
          ),
        ],
      ),
    ),
  );
}
