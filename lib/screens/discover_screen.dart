import 'package:flutter/material.dart';
import 'package:readmenow/screens/audio_bools_tab.dart';
import 'package:readmenow/screens/books_tab.dart';
import 'package:readmenow/widgets/top_view.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
            child: Column(
              children: [
                const TopBar(
                  text: "Discover",
                  isTrelingIconRequired: false,
                ),
                const SizedBox(height: 20),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        20.0,
                      ),
                      color: Colors.grey.shade300,
                    ),
                    child: TabBar(
                      onTap: (value) {},
                      indicatorPadding: const EdgeInsets.all(5),
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          20.0,
                        ),
                        color: Colors.red.shade900,
                      ),
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.grey,
                      tabs: const [
                        Tab(child: Text("Books")),
                        Tab(
                          child: Text("Audiobooks"),
                        ),
                      ],
                    ),
                  ),
                ),
                const Expanded(
                  child: TabBarView(
                      physics: NeverScrollableScrollPhysics(),
                      children: [BooksTab(), AudioBooksTab()]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
