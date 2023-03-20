import 'package:flutter/material.dart';
import 'package:readmenow/models/book.dart';
import 'package:readmenow/screens/books_tab.dart';

class BooksWithTitleTabScreen extends StatelessWidget {
  final bool isGridView;
  const BooksWithTitleTabScreen({this.isGridView = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: isGridView ? const AppGridView() : const AppListView());
  }
}

class AppListView extends StatelessWidget {
  const AppListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (_, index) {
          Book book = items[index];
          return Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        book.cover ?? "",
                        height: 90,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(book.title ?? ""),
                          Text(
                            "Andreases Winkelmann",
                            style: TextStyle(
                                fontSize: 11, color: Colors.grey.shade400),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Column(
                            children: [
                              const Icon(Icons.more_horiz),
                              Icon(
                                Icons.download_for_offline_rounded,
                                color: Colors.red.shade900,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider()
              ],
            ),
          );
        });
  }
}
