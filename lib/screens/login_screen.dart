import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:readmenow/screens/main_screen.dart';
import 'package:readmenow/screens/sign_up_screen.dart';
import 'package:readmenow/widgets/app_button.dart';
import 'package:readmenow/widgets/app_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void onPressSignUp() {
    Get.to(const SignUpScreen());
  }

  void openHomeScreen() {
    Get.off(const MainScreen());
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenSize.height * .15,
                ),
                Text(
                  "readMeNow".tr(),
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                      color: Colors.red.shade700),
                ),
                SizedBox(
                  height: screenSize.height * .06,
                ),
                Text(
                  "loginToYourAccount".tr(),
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: screenSize.height * .01,
                ),
                Text(
                  "enterYourinfo".tr(),
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 14),
                ),
                SizedBox(
                  height: screenSize.height * .08,
                ),
                AppTextField(
                  label: "emailAddress".tr(),
                  hintText: "emailAddress".tr(),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: screenSize.height * .02,
                ),
                AppTextField(
                  label: "password".tr(),
                  hintText: "password".tr(),
                  isPassword: true,
                  keyboardType: TextInputType.visiblePassword,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      // AppNavigator.push(context, const ForgetPasswordScreen());
                    },
                    child: Text(
                      "forgotPassword".tr(),
                      textAlign: TextAlign.right,
                      style:
                          TextStyle(fontSize: 14, color: Colors.red.shade700),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenSize.height * .16,
                ),
                AppButton(
                  text: "login".tr(),
                  onPressed: () => openHomeScreen(),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "dontHaveAnAccount".tr(),
                      textAlign: TextAlign.left,
                      style: const TextStyle(fontSize: 14),
                    ),
                    TextButton(
                      onPressed: () => onPressSignUp(),
                      child: Text(
                        "signUp".tr(),
                        textAlign: TextAlign.right,
                        style:
                            TextStyle(fontSize: 14, color: Colors.red.shade700),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
