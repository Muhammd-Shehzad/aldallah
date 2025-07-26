import 'package:flutter/foundation.dart';

class HomeScreenViewModel extends ChangeNotifier {
  final namazNames = ['Fajr', 'Dhuhr', 'Asr', 'Maghrib', 'Isha'];
  final namazTimes = ['05:12', '12:45', '16:20', '19:10', '20:35'];
  bool isSelected = true;

  List<Map<String, dynamic>> gridData = [
    {'name': 'Qibla', 'image': 'assets/qibla.png'},
    {'name': 'Dua', 'image': 'assets/Dua.png'},
    {'name': 'Zikar', 'image': 'assets/Zikar.png'},
    {'name': 'Mosques', 'image': 'assets/Mosque.png'},
    {'name': 'Hajj & Umrah', 'image': 'assets/Hajj.png'},
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
}
