import 'package:demo_iapp/app/util/toast.dart';
import 'package:get/get.dart';

class ApiChecker {
  static void checkApi(Response response) {
    if (response.statusCode == 401) {
      showToast('Session expired!');
    } else {
      showToast(response.statusText.toString());
    }
  }
}
