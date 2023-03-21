import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:ionicons/ionicons.dart';
import 'package:readmenow/screens/audio_book_screen.dart';
import 'package:readmenow/screens/books_screen.dart';
import 'package:readmenow/screens/discover_screen.dart';
import 'package:readmenow/screens/home_screen.dart';
import 'package:readmenow/screens/settings_screen.dart';
import 'package:lazy_load_indexed_stack/lazy_load_indexed_stack.dart';

class MainScreen extends GetView<BottomBarController> {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomBarController>(
      init: BottomBarController(),
      autoRemove: false,
      builder: (BottomBarController bottomBarController) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: WillPopScope(
            onWillPop: () async {
              return Future.value(false);
            },
            child: LazyLoadIndexedStack(
              index: controller.selectedIndex,
              children: const [
                HomeScreen(),
                BooksScreen(),
                AudioBookScreen(),
                DiscoverScreen(),
                MoreScreen(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: const Icon(Ionicons.home_outline),
                label: 'home'.tr(),
              ),
              BottomNavigationBarItem(
                icon: const Icon(Ionicons.book_outline),
                label: 'books'.tr(),
              ),
              BottomNavigationBarItem(
                icon: const Icon(Ionicons.musical_notes),
                label: 'audiobook'.tr(),
              ),
              BottomNavigationBarItem(
                icon: const Icon(Ionicons.compass_outline),
                label: 'discover'.tr(),
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.more_horiz),
                label: 'more'.tr(),
              ),
            ],
            currentIndex: bottomBarController.selectedIndex,
            selectedItemColor: Colors.red.shade900,
            unselectedItemColor: Colors.grey,
            onTap: bottomBarController.onItemTapped,
          ),
        );
      },
    );
  }
}

class BottomBarController extends GetxController {
  ScrollController scrollController = ScrollController();

  int selectedIndex = 0;
  void onItemTapped(
    int index,
  ) {
    selectedIndex = index;
    if (selectedIndex == 0) {
      // scrollUp();
    }
    update();
  }

  // void scrollUp() {
  //   scrollController.animateTo(
  //     0,
  //     duration: const Duration(milliseconds: 500), //duration of scroll
  //     curve: Curves.fastOutSlowIn //scroll type
  //     ,
  //   );
  // }

  @override
  void onInit() {
    selectedIndex = 0;

    super.onInit();
  }
}
