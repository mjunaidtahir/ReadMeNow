import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:readmenow/screens/feedback_screen.dart';
import 'package:readmenow/screens/information_help.dart';
import 'package:readmenow/screens/my_account.dart';
import 'package:readmenow/screens/setting_screen.dart';
import 'package:readmenow/widgets/top_view.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const TopBar(
              text: "More",
              isTrelingIconRequired: false,
            ),
            const SizedBox(
              height: 10,
            ),
            MoreSettingsTiles(
              icon: Ionicons.person_outline,
              text: "My Account",
              onPressed: () {
                Get.to(const MyAccountScreen());
              },
            ),
            MoreSettingsTiles(
              icon: Ionicons.settings_outline,
              text: "Settings",
              onPressed: () {
                Get.to(const SettingScreen());
              },
            ),
            MoreSettingsTiles(
              icon: Icons.feedback_outlined,
              text: "Feedback",
              onPressed: () {
                Get.to(const FeedbackScreen());
              },
            ),
            MoreSettingsTiles(
              icon: Ionicons.information_circle_outline,
              text: "Information & Help",
              onPressed: () {
                Get.to(const InformationHelp());
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MoreSettingsTiles extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final IconData? icon;
  const MoreSettingsTiles({
    required this.text,
    this.onPressed,
    this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          ListTile(
            onTap: onPressed,
            leading: Icon(
              icon,
            ),
            title: Text(text),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              size: 20,
            ),
          ),
          const Divider()
        ],
      ),
    );
  }
}
