import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesManager {
  SharedPreferences? sharedPreferences;

  SharedPreferencesManager({required this.sharedPreferences});

  Future<bool>? putString(String key, String value) =>
      sharedPreferences?.setString(key, value);

  String? getString(String key) => sharedPreferences?.getString(key);
}

// Obtain shared preferences.

