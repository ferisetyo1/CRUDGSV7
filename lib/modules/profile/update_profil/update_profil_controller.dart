import 'package:boonda_mitra/common/utils/future_ext.dart';
import 'package:boonda_mitra/common/utils/image_picker.dart';
import 'package:boonda_mitra/config/state/app_state.dart';
import 'package:boonda_mitra/config/storage/storage_helper.dart';
import 'package:boonda_mitra/modules/landing/profile/model/profile.dart';
import 'package:boonda_mitra/modules/profile/services/profile_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class UpdateProfilController extends GetxController {
  final services = Get.find<ProfileServices>();
  Rx<XFile?> pickedFile = Rx(null);
  Rx<Profile?> profile = Rx(null);
  Rx<CroppedFile?> croppedFile = Rx(null);
  Rx<AppState> state = const AppState.initial().obs;
  RxString name = "".obs;
  RxString gender = "".obs;
  RxString phone = "".obs;

  @override
  onInit() {
    Profile profileData = GetStorage().profilData;

    profile.value = profileData;
    name.value = profileData.name ?? "";
    gender.value = profileData.gender ?? "";
    phone.value = profileData.phoneNumber ?? "";

    super.onInit();
  }

  submit() async {
    state.value = const AppState.loading();
    var response = await services
        .submitProfile(
            photo: croppedFile.value,
            name: name.value,
            gender: gender.value,
            phone: phone.value)
        .showLoading();
    state.value = response;
    if (response.isError()) {
      response.showError();
    } else if (response.isNoConnection()) {
      response.showNoConnection();
    } else {
      Get.back(result: "success");
      Get.snackbar("Berhasil", "Berhasil mengubah profile");
    }
  }

  Future<void> pickFiles(BuildContext context) async {
    final pick = await showImagePickerDialog(context);
    if (pick != null) {
      pickedFile.value = pick;
      final crop = await ImageCropper()
          .cropImage(sourcePath: pick.path, aspectRatioPresets: [
        CropAspectRatioPreset.square
      ], uiSettings: [
        WebUiSettings(
          context: Get.context!,
          presentStyle: CropperPresentStyle.dialog,
          boundary: CroppieBoundary(
            width: (Get.mediaQuery.size.width * 0.7).floor(),
            height: (Get.mediaQuery.size.height * 0.6).floor(),
          ),
          viewPort: const CroppieViewPort(width: 300, height: 300),
          enableExif: true,
          enableZoom: true,
          showZoomer: true,
        ),
      ]);
      if (crop != null) {
        croppedFile.value = crop;
      }
    }
  }

  void onChangeName(String? value) {
    name.value = value ?? "";
  }

  void onChangeGender(String? value) {
    gender.value = value ?? "";
  }

  void onChangePhone(String? value) {
    phone.value = value ?? "";
  }
}
