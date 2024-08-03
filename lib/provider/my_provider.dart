import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  String language = 'en';

  // ThemeMode themeMode = ThemeMode.light;
  ThemeMode _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;

  bool get isDarkMode => _themeMode == ThemeMode.dark;
  void changeLanguage(String lang) {
    language = lang;
    notifyListeners();
  }

  void toggleTheme(bool isOn) {
    _themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
