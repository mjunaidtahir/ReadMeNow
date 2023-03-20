import 'package:flutter/material.dart';
import 'package:readmenow/models/book.dart';

class BooksTab extends StatelessWidget {
  const BooksTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 30.0),
      child: AppGridView(),
    );
  }
}

class AppGridView extends StatelessWidget {
  const AppGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    return GridView.builder(
      itemCount: items.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 3,
        childAspectRatio: (itemWidth / itemHeight),
        mainAxisExtent: 340,
      ),
      itemBuilder: (BuildContext context, int index) {
        Book book = items[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              book.cover ?? "",
            ),
            Text(book.title ?? ""),
            const Align(
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.more_horiz,
              ),
            ),
          ],
        );
      },
    );
  }
}
