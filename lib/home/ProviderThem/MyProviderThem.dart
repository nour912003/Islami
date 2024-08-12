import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  ThemeMode mode = ThemeMode.light;

  changeThem(ThemeMode themeMode) {
    mode = themeMode;

    notifyListeners();
  }
}
