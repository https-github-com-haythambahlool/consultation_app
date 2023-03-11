import 'package:flutter/material.dart';

class ThemeProvider {
  ThemeMode themeMode = ThemeMode.light;
  bool get isDarkMode => themeMode == ThemeMode.system;

  void toggleTheme(bool isOn) {
    themeMode == isOn ? ThemeMode.dark : ThemeMode.light;
  }
}

class MyThemes {
  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.grey.shade900,
      backgroundColor: Colors.black26,
      colorScheme: ColorScheme.dark(),
      cardColor: Colors.black,
      primaryColor: Color(0xff7b4cff),
      secondaryHeaderColor: Color.fromARGB(255, 174, 145, 254),
      iconTheme: IconThemeData(color: Colors.purple.shade200, opacity: 0.8));

  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Color(0xff7b4cff),
      secondaryHeaderColor: Color.fromARGB(255, 174, 145, 254),
      cardColor: Colors.white,
      backgroundColor: Color.fromARGB(255, 238, 245, 249),
      colorScheme: ColorScheme.light(),
      iconTheme: IconThemeData(color: Colors.red, opacity: 0.8));
}
