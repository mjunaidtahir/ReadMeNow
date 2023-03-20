import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmenow/screens/login_screen.dart';

void main() {
  runApp(const ReadMeNow());
}

class ReadMeNow extends StatelessWidget {
  const ReadMeNow({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: ThemeData.light(),
      // theme:
      home: const LoginScreen(),
    );
  }
}
