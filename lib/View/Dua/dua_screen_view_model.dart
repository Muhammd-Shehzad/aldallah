import 'package:flutter/material.dart';

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
}
