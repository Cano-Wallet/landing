import 'package:cano/app/pages.dart';
import 'package:cano/app/routes.dart';
import 'package:cano/general/unknown.screen.dart';
import 'package:cano/main/main_screen.binding.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MATERIAL APP
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // LOCALE
      // translationsKeys: translationKeys,
      // locale: Locale(persistence.localeCode.val),
      fallbackLocale: const Locale('en', 'US'),
      // NAVIGATION
      initialRoute: Routes.main,
      initialBinding: MainBinding(),
      getPages: AppPages.routes,
      defaultTransition: Transition.native,
      transitionDuration: 200.milliseconds,
      // THEMING
      darkTheme: FlexColorScheme.dark(
        scheme: FlexScheme.jungle,
      ).toTheme, // dark
      themeMode: ThemeMode.dark,
      // UNKNOWN ROUTE FALLBACK SCREEN
      unknownRoute: GetPage(
        name: Routes.unknown,
        page: () => const UnknownScreen(),
      ),
    );
  }
}
