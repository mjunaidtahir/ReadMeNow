import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmenow/utils/theme_service.dart';
import 'package:readmenow/widgets/top_view.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeService themeService = ThemeService();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(width: 10),
                InkWell(
                  onTap: () => Get.back(),
                  child: const Icon(
                    Icons.arrow_back,
                    size: 30,
                  ),
                ),
                const TopBar(
                  text: "Appearance",
                  isTrelingIconRequired: false,
                ),
              ],
            ),
            const Divider(),
            const SizedBox(height: 10),
            ListTile(
              leading: const Icon(Icons.dark_mode),
              title: const Text("Change Theme"),
              onTap: () {
                if (Get.isDarkMode) {
                  Get.changeThemeMode(ThemeMode.light);
                  themeService.switchTheme();
                } else {
                  Get.changeThemeMode(ThemeMode.dark);
                  themeService.switchTheme();
                }
              },
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
