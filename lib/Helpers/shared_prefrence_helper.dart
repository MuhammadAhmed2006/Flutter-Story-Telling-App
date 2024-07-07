import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  static const String _selectedLanguageKey = 'selected_language';

  static Future<void> saveSelectedLanguage(String language) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_selectedLanguageKey, language);
  }

  static Future<String?> loadSelectedLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_selectedLanguageKey);
  }
}
