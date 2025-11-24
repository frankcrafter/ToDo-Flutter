import 'package:flutter/material.dart';
import 'package:todo_app/themes/dark_theme.dart';
import 'package:todo_app/themes/light_theme.dart';

class ThemeProvider extends ChangeNotifier {
  //light mode first
  ThemeData _themeData = lightMode;

  //get theme
  ThemeData get themeData => _themeData;

  //is dark mode
  bool get isDarkMode => _themeData == darkMode;

  set themeData(ThemeData themeData) {
    _themeData = themeData;

    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}
