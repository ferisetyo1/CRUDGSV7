import 'package:boonda_mitra/config/pages/auth_middleware.dart';
import 'package:boonda_mitra/modules/profile/about_app/about_app_bindings.dart';
import 'package:boonda_mitra/modules/profile/about_app/about_app_page.dart';
import 'package:boonda_mitra/modules/profile/change_email/change_email_bindings.dart';
import 'package:boonda_mitra/modules/profile/change_email/change_email_page.dart';
import 'package:boonda_mitra/modules/profile/change_language/change_language_bindings.dart';
import 'package:boonda_mitra/modules/profile/change_password/change_password_bindings.dart';
import 'package:boonda_mitra/modules/profile/change_password/change_password_page.dart';

import 'package:boonda_mitra/modules/profile/children/add_data_pertumbuhan/add_data_pertumbuhan_bindings.dart';
import 'package:boonda_mitra/modules/profile/children/add_data_pertumbuhan/add_data_pertumbuhan_page.dart';
import 'package:boonda_mitra/modules/profile/children/detail_anak/detail_anak_bindings.dart';
import 'package:boonda_mitra/modules/profile/children/detail_anak/detail_anak_page.dart';
import 'package:boonda_mitra/modules/profile/children/detail_pertumbuhan/detail_pertumbuhan_bindings.dart';
import 'package:boonda_mitra/modules/profile/children/detail_pertumbuhan/detail_pertumbuhan_page.dart';
import 'package:boonda_mitra/modules/profile/children/pilih_children/pilih_children_bindings.dart';
import 'package:boonda_mitra/modules/profile/children/pilih_children/pilih_children_page.dart';
import 'package:boonda_mitra/modules/profile/children/z_score/z_score_bindings.dart';
import 'package:boonda_mitra/modules/profile/children/z_score/z_score_page.dart';
import 'package:boonda_mitra/modules/profile/guardian/add_guardian/add_guardian_bindings.dart';
import 'package:boonda_mitra/modules/profile/guardian/add_guardian/add_guardian_page.dart';
import 'package:boonda_mitra/modules/profile/hapus_akun/hapus_akun_bindings.dart';
import 'package:boonda_mitra/modules/profile/hapus_akun/hapus_akun_page.dart';
import 'package:boonda_mitra/modules/profile/children/list_children/list_children_bindings.dart';
import 'package:boonda_mitra/modules/profile/children/list_children/list_children_page.dart';
import 'package:boonda_mitra/modules/profile/guardian/list_guardian/list_guardian_bindings.dart';
import 'package:boonda_mitra/modules/profile/guardian/list_guardian/list_guardian_page.dart';
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
  static String detailAnak = "/detail-anak";
  static String infoZScore = "/info-z-score";
  static String addDataPertumbuhan = "/add-data-pertumbuhan";
  static String detailPertumbuhan = "/detail-pertumbuhan";
  static String addChildren = "/add-children";
  static String listChildren = "/list-children";
  static String pilihChildren = "/pilih-children";
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
            name: listChildren,
            page: () => const ListChildrenPage(),
            binding: ListChildrenBindings(),
            middlewares: [AuthMiddleware()]),
        GetPage(
            name: pilihChildren,
            page: () => const PilihChildrenPage(),
            binding: PilihChildrenBindings(),
            fullscreenDialog: true,
            middlewares: [AuthMiddleware()]),
        GetPage(
            name: detailAnak,
            page: () => const DetailAnakPage(),
            binding: DetailAnakBindings(),
            middlewares: [AuthMiddleware()]),
        GetPage(
            name: addDataPertumbuhan,
            page: () => const AddDataPertumbuhanPage(),
            binding: AddDataPertumbuhanBindings(),
            middlewares: [AuthMiddleware()]),
        GetPage(
            name: detailPertumbuhan,
            page: () => const DetailPertumbuhanPage(),
            binding: DetailPertumbuhanBindings(),
            middlewares: [AuthMiddleware()]),
        GetPage(
            name: infoZScore,
            page: () => const ZScorePage(),
            binding: ZScoreBindings(),
            middlewares: [AuthMiddleware()]),
        GetPage(
            name: addGuardian,
            page: () => const AddGuardianPage(),
            binding: AddGuardianBindings(),
            middlewares: [AuthMiddleware()]),
        GetPage(
            name: listGuardian,
            page: () => const ListGuardianPage(),
            binding: ListGuardianBindings(),
            middlewares: [AuthMiddleware()]),
        GetPage(
            name: settingNotification,
            page: () => const SettingNotificationPage(),
            binding: SettingNotificationBindings(),
            middlewares: [AuthMiddleware()]),
      ];
}
