import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../sharedPrefernces/shared_pref_controller.dart';

class LanguageProvider extends ChangeNotifier {
  String language = SharedPrefController().language;

  void changeLanguage() async {
    language = language == 'en' ? 'ar' : 'en';
    await SharedPrefController().changeLanguage(language: language);
    notifyListeners();
  }
}
