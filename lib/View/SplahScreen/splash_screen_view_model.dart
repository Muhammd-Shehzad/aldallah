import 'package:aldallah/Model/Utils/Routes/routes_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreenViewModel extends ChangeNotifier {
  void splashServices() {
    Future.delayed(Duration(seconds: 3), () {
      Get.offAllNamed(RoutesNames.IndicatorScreen);
    });
  }
}
