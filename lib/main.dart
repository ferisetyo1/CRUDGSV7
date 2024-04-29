import 'package:boonda_mitra/common/style/color_pallete.dart';
import 'package:boonda_mitra/config/pages/pages.dart';
import 'package:boonda_mitra/config/storage/storage_helper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:form_builder_validators/localization/l10n.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'config/bindings/app_bindings.dart';
import 'config/config.dart';
import 'config/style/button_theme_data.dart';
import 'config/style/checbox_theme_data.dart';
import 'config/style/chip_theme.dart';
import 'config/style/input_decorating.dart';
import 'config/style/radio_theme_data.dart';
import 'config/style/text_style.dart';
import 'config/translation/app_translation.dart';
import 'firebase_options.dart';
import 'firebase_options_staging.dart' as FireStag;
import 'firebase_options_dev.dart' as FireDev;

Future<void> main() async {
  const env = String.fromEnvironment('env');
  if (env == 'dev') {
    await initApp(flavor: Flavor.dev);
  } else if (env == 'stag') {
    await initApp(flavor: Flavor.stag);
  } else if (env == 'prod') {
    await initApp(flavor: Flavor.prod);
  } else {
    throw 'unknown environment: $env';
  }
}

Future<void> initApp({Flavor flavor = Flavor.prod}) async {
  Config.flavor = flavor;
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await GetStorage.init();
  await Firebase.initializeApp(
    options: flavor == Flavor.prod
        ? DefaultFirebaseOptions.currentPlatform
        : flavor == Flavor.stag
            ? FireStag.DefaultFirebaseOptions.currentPlatform
            : FireDev.DefaultFirebaseOptions.currentPlatform,
  );
  FlutterNativeSplash.remove();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          // key: globalNavigatorKey,
          title: 'Boonda Mitra',
          initialRoute: AppPages.splashName,
          getPages: AppPages.pages,
          translations: AppTranslation(),
          locale: Locale(GetStorage().locale),
          enableLog: true,
          supportedLocales: const [
            ...FormBuilderLocalizations.supportedLocales
          ],
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            FormBuilderLocalizations.delegate,
          ],
          debugShowCheckedModeBanner: false,
          initialBinding: AppBindings(),
          navigatorObservers: [GetObserver((value) {})],
          routingCallback: (value) async {
            try {
              await FirebaseAnalytics.instance
                  .logScreenView(screenName: "${value?.current}");
            } catch (e) {
              debugPrint(e.toString());
            }
          },
          theme: ThemeData(
              colorScheme:
                  ColorScheme.fromSeed(seedColor: ColorPalletes.toscaNormal),
              visualDensity: VisualDensity.adaptivePlatformDensity,
              useMaterial3: true,
              textTheme: buildTextTheme(Theme.of(context).textTheme),
              inputDecorationTheme: inputDecorationTheme,
              filledButtonTheme: filledButtonThemeData,
              buttonTheme: buttonThemeData,
              outlinedButtonTheme: outlineButtonThemeData,
              textButtonTheme: textButtonThemeData,
              checkboxTheme: checkboxThemeData,
              brightness: Brightness.light,
              radioTheme: radioThemeData,
              dialogBackgroundColor: Colors.white,
              appBarTheme: const AppBarTheme(
                  titleTextStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.black)),
              sliderTheme: const SliderThemeData(
                  activeTickMarkColor: ColorPalletes.toscaNormal),
              chipTheme: chipThemeData),
        );
      },
    );
  }
}
