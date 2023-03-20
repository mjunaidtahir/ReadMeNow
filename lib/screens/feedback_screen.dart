import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmenow/screens/feedback_submission_screen.dart';
import 'package:readmenow/widgets/top_view.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

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
                  text: "Feedback",
                  isTrelingIconRequired: false,
                ),
              ],
            ),
            const Divider(),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text("Do You enjoy reading with the ReadMeNow app?"),
                ),
                const SizedBox(
                  height: 10,
                ),
                const ListTile(
                  title: Text("Yes"),
                  subtitle: Text("Then why not show it by rating our app"),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 20,
                  ),
                ),
                const Divider(),
                ListTile(
                  onTap: () {
                    Get.to(const SubmitFeedbackScreen());
                  },
                  title: const Text("No"),
                  subtitle:
                      const Text("Please tell us why and share your opinion"),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 20,
                  ),
                )
              ],
            ),
            const Divider()
          ],
        ),
      ),
    );
  }
}
