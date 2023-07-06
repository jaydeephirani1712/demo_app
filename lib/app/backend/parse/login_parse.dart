import 'package:demo_iapp/app/backend/api/api.dart';
import 'package:demo_iapp/app/helper/shared_pref.dart';

class LoginParser {
  final ApiService apiService;
  final SharedPreferencesManager sharedPreferencesManager;

  LoginParser(
      {required this.sharedPreferencesManager, required this.apiService});
}
