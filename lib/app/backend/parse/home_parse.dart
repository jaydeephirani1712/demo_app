import 'package:demo_iapp/app/backend/api/api.dart';
import 'package:demo_iapp/app/helper/shared_pref.dart';
import 'package:demo_iapp/app/util/constant.dart';
import 'package:get/get.dart';

class HomeParser {
  final ApiService apiService;
  final SharedPreferencesManager sharedPreferencesManager;

  HomeParser(
      {required this.sharedPreferencesManager, required this.apiService});

  Future<Response> getHome() async {
    var response = await apiService.getPrivate(
      AppConstants.homeURL,
    );
    return response;
  }

  Future<Response> getHomeData() async {
    var response = await apiService.getPrivate(
      'https://fakestoreapi.com/products/',
    );
    return response;
  }
}
