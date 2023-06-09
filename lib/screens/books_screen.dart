import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
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
                TopBar(
                  text: "books".tr(),
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
                      tabs: [
                        Tab(child: const Text("title").tr()),
                        Tab(
                          child: Text("authors".tr()),
                        ),
                        Tab(
                          child: Text("collections".tr()),
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
                      children: [
                        SizedBox(
                          child: GestureDetector(
                            onTap: () {
                              Get.bottomSheet(
                                Container(
                                  height: Get.height / 3,
                                  color: Theme.of(context).primaryColor,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        ListTile(
                                          onTap: () {
                                            Get.back();
                                          },
                                          leading: const Icon(Icons.close),
                                          title: Text("sortBy".tr()),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        ListTile(
                                          title: Text("a-z".tr()),
                                        ),
                                        const SizedBox(
                                          height: 3,
                                        ),
                                        ListTile(
                                          title: Text("z-a".tr()),
                                        ),
                                        const SizedBox(
                                          height: 3,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                            child: Row(
                              children: const [
                                Icon(Icons.arrow_upward_rounded, size: 20),
                                Icon(Icons.arrow_downward_rounded, size: 20),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {
                            Get.bottomSheet(
                              Container(
                                height: Get.height / 2,
                                color: Theme.of(context).primaryColor,
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      ListTile(
                                        onTap: () {
                                          Get.back();
                                        },
                                        leading: const Icon(Icons.close),
                                        title: Text("filterBy".tr()),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      ListTile(
                                        title: Text("unRead".tr()),
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      ListTile(
                                        title: Text("started".tr()),
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      ListTile(
                                        title: Text("finished".tr()),
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      ListTile(
                                        title: Text("availableOffline".tr()),
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      ListTile(
                                        title: Text("imported".tr()),
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      ListTile(
                                        title: Text("bought".tr()),
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      ListTile(
                                        title: Text("readingSample".tr()),
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          child: Text(
                            "filters".tr(),
                          ),
                        ),
                        const Icon(Icons.arrow_drop_down, size: 20),
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
