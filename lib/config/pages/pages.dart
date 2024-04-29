import 'package:get/get.dart';

import '../../modules/landing/home/home_bindings.dart';
import '../../modules/landing/main/main_bindings.dart';
import '../../modules/landing/main/main_page.dart';
import '../../modules/landing/master_data/master_data_bindings.dart';
import '../../modules/landing/profile/profile_bindings.dart';
import '../../modules/landing/social_menu/social_menu_bindings.dart';
import '../../modules/landing/splash/splash_binding.dart';
import '../../modules/landing/splash/splash_page.dart';
import '../../modules/auth/auth_pages.dart';
import '../../modules/profile/profile_pages.dart';

class AppPages {
  static const String splashName = "/splash";
  static const String onBoardingName = "/onBoarding";
  static const String mainName = "/main";
  static const String searchName = "/search";

  static List<GetPage> get pages => [
        GetPage(
            name: splashName,
            page: () => const SplashPage(),
            binding: LandingBinding()),
        GetPage(
          name: mainName,
          page: () => const MainPage(),
          bindings: [
            MainBinding(),
            HomeBindings(),
            MasterDataBindings(),
            SocialMenuBindings(),
            ProfileBindings()
          ],
        ),
        ...AuthPages.pages,
        ...ProfilePages.pages,
        // ...NewsPages.pages,
        // ...DaycarePage.pages,
        // ...OrderPages.pages,
        // ...PlaygroundPages.pages,
        // ...ChildcarePages.pages,
        // GetPage(
        //     name: searchName,
        //     page: () => const SearchFeaturePage(),
        //     binding: SearchFeatureBindings()),
      ];
}
