import 'package:flutter/material.dart';

class MosqueScreenViewModel extends ChangeNotifier {
  final List<Map<String, dynamic>> mosqueList = [
    {'name': 'Zar Ghunni Masjid', 'distance': '712 m'},
    {'name': 'Gol Masjid', 'distance': '773 m'},
    {'name': 'Masjid Khalid Bin Waleed', 'distance': '4.4 km'},
    {'name': 'Sunehri Masjid', 'distance': '6.6 km'},
  ];
}
