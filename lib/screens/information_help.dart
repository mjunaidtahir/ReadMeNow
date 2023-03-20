import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readmenow/widgets/top_view.dart';

class InformationHelp extends StatelessWidget {
  const InformationHelp({super.key});

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
                  text: "Information & Help",
                  isTrelingIconRequired: false,
                ),
              ],
            ),
            const Divider(),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const ListTile(
                    title: Text("Software Version"),
                    trailing: Text(
                      "5.100 (6677)",
                      style: TextStyle(fontWeight: FontWeight.w200),
                    )),
                const Divider(),
                const ListTile(
                    title: Text("Code Revision"),
                    trailing: Text(
                      "S99as221",
                      style: TextStyle(fontWeight: FontWeight.w200),
                    )),
                const Divider(),
                const ListTile(
                  title: Text("Licenses"),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 20,
                  ),
                ),
                const Divider(),
                ListTile(
                  onTap: () {},
                  title: const Text("Contact"),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 20,
                  ),
                ),
                const Divider(),
                ListTile(
                  onTap: () {},
                  title: const Text("Imprint"),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 20,
                  ),
                ),
                const Divider(),
                ListTile(
                  onTap: () {},
                  title: const Text("Data Privacy"),
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
