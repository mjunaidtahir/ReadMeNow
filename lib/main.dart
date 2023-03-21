import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:readmenow/screens/login_screen.dart';
import 'package:readmenow/utils/globals.dart';
import 'package:readmenow/utils/theme.dart';
import 'package:readmenow/utils/theme_service.dart';

void main() async {
  await GetStorage.init();
  await EasyLocalization.ensureInitialized();
  var devices = ['27E0262A6207764C54B6FA32962E5FB3'];
  if (Platform.isAndroid || Platform.isIOS) {
    WidgetsFlutterBinding.ensureInitialized();
    await MobileAds.instance.initialize();
    RequestConfiguration requestConfiguration =
        RequestConfiguration(testDeviceIds: devices);
    MobileAds.instance.updateRequestConfiguration(requestConfiguration);
  }

  runApp(EasyLocalization(
    supportedLocales: languages,
    path: 'assets/translations',
    fallbackLocale: const Locale('en'),
    useOnlyLangCode: true,
    child: const ReadMeNow(),
  ));
}

class ReadMeNow extends StatelessWidget {
  const ReadMeNow({super.key});

  @override
  Widget build(BuildContext context) {
    context.setLocale(context.locale);

    print("hehe");
    return GetMaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,
      home: const LoginScreen(),
    );
  }
}
