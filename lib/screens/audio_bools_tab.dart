import 'package:flutter/material.dart';
import 'package:readmenow/screens/books_tab.dart';

class AudioBooksTab extends StatelessWidget {
  const AudioBooksTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 30.0),
      child: AppGridView(),
    );
  }
}
