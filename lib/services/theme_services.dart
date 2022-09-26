import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeServices {
  final GetStorage _storageTheme = GetStorage();
  final _key = "isDarkMode";

  _saveThemeMode(bool isDarkMode) {
    _storageTheme.write(_key, isDarkMode);
  }

  // False means light theme
  bool _loadThemeMode() => _storageTheme.read<bool>(_key) ?? false;

  // True means dark theme
  ThemeMode get theme => _loadThemeMode() ? ThemeMode.dark : ThemeMode.light;

  void switchTheme() {
    // Change the theme depend on our loadtheme function
    Get.changeThemeMode(_loadThemeMode() ? ThemeMode.light : ThemeMode.dark);
    // Save the themeMode to our StorageTheme
    _saveThemeMode(!_loadThemeMode());
  }
}
