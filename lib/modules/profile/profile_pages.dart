import 'package:boonda_mitra/config/pages/auth_middleware.dart';
import 'package:boonda_mitra/modules/profile/about_app/about_app_bindings.dart';
import 'package:boonda_mitra/modules/profile/about_app/about_app_page.dart';
import 'package:boonda_mitra/modules/profile/change_email/change_email_bindings.dart';
import 'package:boonda_mitra/modules/profile/change_email/change_email_page.dart';
import 'package:boonda_mitra/modules/profile/change_language/change_language_bindings.dart';
import 'package:boonda_mitra/modules/profile/change_password/change_password_bindings.dart';
import 'package:boonda_mitra/modules/profile/change_password/change_password_page.dart';

import 'package:boonda_mitra/modules/profile/hapus_akun/hapus_akun_bindings.dart';
import 'package:boonda_mitra/modules/profile/hapus_akun/hapus_akun_page.dart';
import 'package:boonda_mitra/modules/profile/privacy_app/privacy_app_bindings.dart';
import 'package:boonda_mitra/modules/profile/privacy_app/privacy_app_page.dart';
import 'package:boonda_mitra/modules/profile/setting_notification/setting_notification_bindings.dart';
import 'package:boonda_mitra/modules/profile/setting_notification/setting_notification_page.dart';
import 'package:boonda_mitra/modules/profile/term_condition/term_condition_bindings.dart';
import 'package:boonda_mitra/modules/profile/term_condition/term_condition_page.dart';
import 'package:boonda_mitra/modules/profile/update_profil/update_profil_bindings.dart';
import 'package:boonda_mitra/modules/profile/update_profil/update_profil_page.dart';
import 'package:get/get.dart';

import 'change_language/change_language_page.dart';

class ProfilePages {
  static const update = "/profile/update";
  static String about = "/about";
  static String privacy = "/privacy";
  static String tnc = "/tnc";
  static String changeLanguage = "/change-language";
  static String changeEmail = "/change-email";
  static String changePassword = "/change-password";
  static String hapusAkun = "/hapus-akun";
  static String addGuardian = "/add-guardian";
  static String listGuardian = "/list-guardian";
  static String settingNotification = "/setting-notification";

  static List<GetPage> get pages => [
        GetPage(
            name: update,
            page: () => const UpdateProfilPage(),
            binding: UpdateProfilBindings(),
            middlewares: [AuthMiddleware()]),
        GetPage(
            name: about,
            page: () => const AboutAppPage(),
            binding: AboutAppBindings()),
        GetPage(
            name: privacy,
            page: () => const PrivacyAppPage(),
            binding: PrivacyAppBindings()),
        GetPage(
            name: tnc,
            page: () => const TermConditionPage(),
            binding: TermConditionBindings()),
        GetPage(
            name: changeLanguage,
            page: () => const ChangeLanguagePage(),
            binding: ChangeLanguageBindings(),
            middlewares: [AuthMiddleware()]),
        GetPage(
            name: changeEmail,
            page: () => const ChangeEmailPage(),
            binding: ChangeEmailBindings(),
            middlewares: [AuthMiddleware()]),
        GetPage(
            name: changePassword,
            page: () => const ChangePasswordPage(),
            binding: ChangePasswordBindings(),
            middlewares: [AuthMiddleware()]),
        GetPage(
            name: hapusAkun,
            page: () => const HapusAkunPage(),
            binding: HapusAkunBindings(),
            middlewares: [AuthMiddleware()]),
        GetPage(
            name: settingNotification,
            page: () => const SettingNotificationPage(),
            binding: SettingNotificationBindings(),
            middlewares: [AuthMiddleware()]),
      ];
}
