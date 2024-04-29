import 'package:boonda_mitra/common/utils/launch_url.dart';
import 'package:boonda_mitra/modules/landing/profile/widgets/logout_section.dart';
import 'package:boonda_mitra/modules/landing/profile/widgets/personal_data_section.dart';
import 'package:boonda_mitra/modules/landing/profile/widgets/settings_section.dart';
import 'package:boonda_mitra/modules/landing/profile/widgets/app_version_widget.dart';
import 'package:boonda_mitra/modules/landing/profile/widgets/error_message_widget.dart';
import 'package:boonda_mitra/modules/landing/profile/widgets/informasi_user_profil.dart';
import 'package:boonda_mitra/modules/landing/profile/widgets/list_tile_profile.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './profile_controller.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
        centerTitle: false,
        automaticallyImplyLeading: false,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await controller.getProfile();
        },
        child: ListView(
          children: [
            const ErrorMessageWidget(),
            const InformasiUserProfil(),
            const AppVersionWidget(),
            const PersonalDataSection(),
            const SettingsSection(),
            ListTileProfile(
              text: "help_center".tr,
              leadingIcon:
                  const SizedBox(width: 24, child: Icon(Icons.support_agent)),
              onTap: () {
                final url = Uri.encodeFull(
                    "https://wa.me/+6281234474107?text=Haii...Admin Boonda bisa bantu saya terkait dengan layanan Aplikasi Boonda ?");
                launchUrl(url);
              },
            ),
            const LogoutSection(),
          ],
        ),
      ),
    );
  }
}
