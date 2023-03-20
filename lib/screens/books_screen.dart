import 'package:flutter/material.dart';
import 'package:readmenow/screens/authors_tab.dart';
import 'package:readmenow/screens/collection_tab.dart';
import 'package:readmenow/screens/title_tab.dart';
import 'package:readmenow/widgets/top_view.dart';

class BooksScreen extends StatefulWidget {
  const BooksScreen({super.key});

  @override
  State<BooksScreen> createState() => _BooksScreenState();
}

class _BooksScreenState extends State<BooksScreen> {
  bool isGridView = true;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
            child: Column(
              children: [
                const TopBar(
                  text: "Books",
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
                        Tab(child: Text("Tiles")),
                        Tab(
                          child: Text("Authors"),
                        ),
                        Tab(
                          child: Text("Collections"),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.arrow_upward_rounded, size: 20),
                        Icon(Icons.arrow_downward_rounded, size: 20),
                        SizedBox(width: 10),
                        Text("Filters"),
                        Icon(Icons.arrow_drop_down, size: 20),
                      ],
                    ),
                    GestureDetector(
                        onTap: () {
                          isGridView = !isGridView;

                          setState(() {});
                        },
                        child: isGridView
                            ? const Icon(Icons.grid_3x3_outlined)
                            : const Icon(Icons.list))
                  ],
                ),
                Expanded(
                  child: TabBarView(
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        BooksWithTitleTabScreen(
                          isGridView: isGridView,
                        ),
                        const BooksWithAurthorsTabScreen(),
                        const BooksWithCollectionTabScreen()
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
