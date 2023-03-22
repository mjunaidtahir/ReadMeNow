import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:readmenow/models/book.dart';

class BooksWithCollectionTabScreen extends StatelessWidget {
  const BooksWithCollectionTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsetsDirectional.symmetric(vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.red.shade900)),
            child: Center(
              child: Text("createCollections".tr()),
            ),
          ),
        ),
        Expanded(
            child: Swiper(
          axisDirection: AxisDirection.right,
          layout: SwiperLayout.STACK,
          itemWidth: 200,
          itemHeight: 300,
          itemBuilder: (context, index) {
            Book book = items[index];
            return Image.asset(
              book.cover ?? "",
              fit: BoxFit.fill,
            );
          },
          autoplay: false,
          itemCount: items.length,
          scrollDirection: Axis.horizontal,
        )),
      ],
    );
  }
}
