import 'package:demo_iapp/app/backend/binding/home_binding.dart';
import 'package:demo_iapp/app/backend/binding/login_binding.dart';
import 'package:demo_iapp/app/view/home.dart';
import 'package:demo_iapp/app/view/login.dart';
import 'package:get/route_manager.dart';

class AppRouter {
  static const String initial = '/';
  static const String home = '/home';

  static String getInitialRoute() => initial;
  static String getHomeRoute() => home;

  static List<GetPage> routes = [
    GetPage(
      name: initial,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(name: home, page: () => const HomeView(), binding: HomeBinding()),
  ];
}
