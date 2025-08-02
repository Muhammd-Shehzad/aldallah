import 'package:aldallah/Model/Utils/Routes/routes_names.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class HomeScreenViewModel extends ChangeNotifier {
  final namazNames = ['Fajr', 'Dhuhr', 'Asr', 'Maghrib', 'Isha'];
  final namazTimes = ['05:12', '12:45', '16:20', '19:10', '20:35'];
  bool isSelected = true;

  List<Map<String, dynamic>> gridData = [
    {'name': 'Qibla', 'image': 'assets/qabilaIcon.png'},
    {'name': 'Dua', 'image': 'assets/duaicon.png'},
    {'name': 'Zikar', 'image': 'assets/zikarIcon.png'},
    {'name': 'Mosques', 'image': 'assets/mosqueIcon.png'},
    {'name': 'Hajj & Umrah', 'image': 'assets/hijjIcon.png'},
  ];
  List<Map<String, dynamic>> namzData = [
    {
      'name': 'Fajir',
      'time': '05:51',
      'image': 'assets/teenyicons_down-solid.png',
    },
    {
      'name': 'Dhuhr',
      'time': '12:24',
      'image': 'assets/teenyicons_down-solid.png',
    },
    {
      'name': 'Asr',
      'time': '03:10',
      'image': 'assets/teenyicons_down-solid.png',
    },
    {
      'name': 'Maghrib',
      'time': '05:28',
      'image': 'assets/teenyicons_down-solid.png',
    },
    {
      'name': 'Isha',
      'time': '06:56',
      'image': 'assets/teenyicons_down-solid.png',
    },
  ];

  void onTapFun(int index) {
    switch (index) {
      case 0:
        Get.toNamed(RoutesNames.QiblaScreen);
        break;
      case 1:
        Get.toNamed(RoutesNames.DuaScreen);
        break;
      case 2:
        Get.toNamed(RoutesNames.ZikarScreen);
        break;
      case 3:
        Get.toNamed(RoutesNames.MosqueScreen);
        break;
      case 4:
        Get.toNamed(RoutesNames.HijjAndUmrahScreen);
        break;
    }
  }
}
