import 'package:demo_iapp/app/backend/parse/login_parse.dart';
import 'package:demo_iapp/app/helper/router.dart';
import 'package:demo_iapp/app/util/toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController implements GetxService {
  final LoginParser parser;
  final emailTextEditor = TextEditingController();
  final passwordTextEditor = TextEditingController();
  LoginController({required this.parser});

  @override
  void onInit() {
    emailTextEditor.text = '';
    passwordTextEditor.text = '';
    super.onInit();
  }

  Future<void> onLogin() async {
    if (emailTextEditor.text.isEmpty || passwordTextEditor.text.isEmpty) {
      showToast('Email & Password are required');
      return;
    }
    if (emailTextEditor.text != 'admnin' &&
        passwordTextEditor.text != '123456') {
      showToast('Username and password not match');
      return;
    }
    debugPrint('ok');
    Get.offNamed(AppRouter.home);
  }
}
