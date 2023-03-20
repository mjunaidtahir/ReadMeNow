import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmenow/widgets/app_text_field.dart';
import 'package:readmenow/widgets/top_view.dart';

class SubmitFeedbackScreen extends StatelessWidget {
  const SubmitFeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    text: "Feedback",
                    isTrelingIconRequired: false,
                  ),
                ],
              ),
              const Divider(),
              const SizedBox(height: 10),
              const Text("Please Describe the problem"),
              const AppTextField(
                hintText: "Description ",
              ),
              const SizedBox(height: 10),
              const Text(
                  "Enter Your Email Adress if you would like to receive a reply form us"),
              const SizedBox(height: 10),
              const AppTextField(
                hintText: "Email address ",
              ),
              const SizedBox(height: 20),
              Center(
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Send",
                        style: TextStyle(color: Colors.red.shade900),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
