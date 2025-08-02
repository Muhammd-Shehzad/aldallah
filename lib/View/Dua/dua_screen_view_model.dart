import 'package:aldallah/Model/Utils/Routes/routes_names.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DuaScreenViewModel extends ChangeNotifier {
  List<Map<String, dynamic>> imageData = [
    {'image': 'assets/accidentalDeath.JPG', 'name': 'Accidental Death'},
    {'image': 'assets/GoodsMorals.JPG', 'name': 'Goods Morals'},
    {'image': 'assets/Success.JPG', 'name': 'Success'},
    {'image': 'assets/repentance.JPG', 'name': 'Repentance'},
    {'image': 'assets/Goodsend.JPG', 'name': 'Goods End'},
    {'image': 'assets/Relieve of Distress.JPG', 'name': 'Relieve of Distress'},
    {'image': 'assets/Cloths.JPG', 'name': 'Cloths'},
  ];

  // void onTapFun(int index) {
  //   switch (index) {
  //     case 0:
  //       Get.toNamed(RoutesNames.QiblaScreen);
  //       break;
  //     case 1:
  //       Get.toNamed(RoutesNames.DuaScreen);
  //       break;
  //     case 2:
  //       Get.toNamed(RoutesNames.ZikarScreen);
  //       break;
  //     case 3:
  //       Get.toNamed(RoutesNames.MosqueScreen);
  //       break;
  //     case 4:
  //       Get.toNamed(RoutesNames.HijjAndUmrahScreen);
  //       break;
  //   }
  // }
}
