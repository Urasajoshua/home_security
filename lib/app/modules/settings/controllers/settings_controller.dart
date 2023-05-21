import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  RxBool isDarkModeEnabled = false.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void toggleMode() {
    isDarkModeEnabled.value = !isDarkModeEnabled.value;
    ThemeData.dark();
  }
}
