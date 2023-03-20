import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:readmenow/screens/login_screen.dart';
import 'package:readmenow/utils/theme.dart';
import 'package:readmenow/utils/theme_service.dart';

void main() async {
  await GetStorage.init();
  runApp(const ReadMeNow());
}

class ReadMeNow extends StatelessWidget {
  const ReadMeNow({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,
      home: const LoginScreen(),
    );
  }
}
