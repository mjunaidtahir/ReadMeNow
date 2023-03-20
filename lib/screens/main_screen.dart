import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Ionicons.home_outline),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Ionicons.book_outline),
                label: 'Books',
              ),
              BottomNavigationBarItem(
                icon: Icon(Ionicons.musical_notes),
                label: 'Audiobook',
              ),
              BottomNavigationBarItem(
                icon: Icon(Ionicons.compass_outline),
                label: 'Discover',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz),
                label: 'More',
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
