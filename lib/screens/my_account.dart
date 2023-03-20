import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmenow/screens/login_screen.dart';
import 'package:readmenow/widgets/top_view.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

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
                  text: "My Account",
                  isTrelingIconRequired: false,
                ),
              ],
            ),
            const Divider(),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("You are not logged in."),
                  TextButton(
                    onPressed: () {
                      Get.to(
                        const LoginScreen(),
                      );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.red.shade900),
                    ),
                  )
                ],
              ),
            ),
            const Divider()
          ],
        ),
      ),
    );
  }
}
