import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeService {
  final _box = GetStorage();
  final _key = 'isThemeMode';

  ThemeMode get theme => _box.read(_key) == null
      ? ThemeMode.light
      : _loadThemeFromBox() == 1
          ? ThemeMode.dark
          : ThemeMode.light;

  int _loadThemeFromBox() {
    return _box.read(_key);
  }

  void switchTheme() {
    _box.write(_key, Get.isDarkMode ? 0 : 1);
  }
}
