import 'package:aldallah/View/Home/Chat/chat_screen.dart';
import 'package:aldallah/View/Home/HomeScreen/home_screen.dart';
import 'package:aldallah/View/Home/Setting/setting_screen.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  int selectIndex = 0;
  final List<Widget> screens = [HomeScreen(), ChatScreen(), SettingScreen()];

  void onTapItem(int index) {
    selectIndex = index;
    notifyListeners();
  }
}
