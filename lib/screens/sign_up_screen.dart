import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmenow/screens/login_screen.dart';
import 'package:readmenow/widgets/app_button.dart';
import 'package:readmenow/widgets/app_text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                  height: screenSize.height * .05,
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
                  "Register Your Account",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: screenSize.height * .01,
                ),
                const Text(
                  "Please enter the information below to Regestration",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(
                  height: screenSize.height * .08,
                ),
                const AppTextField(
                  label: "Name",
                  hintText: "Enter Your Name",
                  keyboardType: TextInputType.visiblePassword,
                ),
                SizedBox(
                  height: screenSize.height * .02,
                ),
                const AppTextField(
                  label: "Last Name",
                  hintText: "Enter Your Last Name",
                  keyboardType: TextInputType.visiblePassword,
                ),
                SizedBox(
                  height: screenSize.height * .02,
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
                SizedBox(
                  height: screenSize.height * .02,
                ),
                const AppTextField(
                  label: "Confirm Password",
                  hintText: "Enter Confirm Password",
                  isPassword: true,
                  keyboardType: TextInputType.visiblePassword,
                ),
                SizedBox(
                  height: screenSize.height * .16,
                ),
                AppButton(
                  text: "Sign Up",
                  onPressed: () {},
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already Have an Account?",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 14),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(const LoginScreen());
                      },
                      child: Text(
                        "Login",
                        textAlign: TextAlign.right,
                        style:
                            TextStyle(fontSize: 14, color: Colors.red.shade700),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
