import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../customWidgets/themeData.dart';

class ProfileController extends GetxController {
  RxBool isDarkMode = Get.isDarkMode.obs;

  void toggleTheme() {
    if (isDarkMode.value) {
      Get.changeTheme(lightTheme);
      isDarkMode.value = false;
    } else {
      Get.changeTheme(darkTheme);
      isDarkMode.value = true;
    }
  }
}
