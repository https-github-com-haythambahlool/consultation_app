import 'package:shared_preferences/shared_preferences.dart';

enum PrefKey { language }

class SharedPrefController {
  static final SharedPrefController _instance =
      SharedPrefController._internal();

  factory SharedPrefController() {
    return _instance;
  }

  SharedPrefController._internal();
  late SharedPreferences _sharedPreferences;

  Future<void> initSharedPreferences() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  String get language =>
      _sharedPreferences.getString(PrefKey.language.toString()) ?? 'en';
//
  Future<void> changeLanguage({required String language}) async {
    await _sharedPreferences.setString(PrefKey.language.toString(), language);
  }
}
