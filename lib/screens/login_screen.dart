import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
                  "Read Me Now",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                      color: Colors.red.shade700),
                ),
                SizedBox(
                  height: screenSize.height * .06,
                ),
                const Text(
                  "Login To Your Account",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: screenSize.height * .01,
                ),
                const Text(
                  "Please enter the information below to login",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(
                  height: screenSize.height * .08,
                ),
                const AppTextField(
                  label: "Email",
                  hintText: "Enter Email",
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: screenSize.height * .02,
                ),
                const AppTextField(
                  label: "Password",
                  hintText: "Enter Password",
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
                      "Forget password?",
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
                  text: "Login",
                  onPressed: () => openHomeScreen(),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 14),
                    ),
                    TextButton(
                      onPressed: () => onPressSignUp(),
                      child: Text(
                        "Sign Up",
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
