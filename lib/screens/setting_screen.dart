import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmenow/screens/settings_screen.dart';
import 'package:readmenow/widgets/top_view.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                  text: "Settings",
                  isTrelingIconRequired: false,
                ),
              ],
            ),
            const Divider(),
            const SizedBox(height: 10),
            MoreSettingsTiles(
              icon: Icons.light_mode,
              text: "Appearance",
              onPressed: () {},
            ),
            const Divider()
          ],
        ),
      ),
    );
  }
}
