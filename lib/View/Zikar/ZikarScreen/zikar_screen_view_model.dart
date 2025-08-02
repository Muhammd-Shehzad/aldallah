import 'package:flutter/material.dart';

class ZikarScreenViewModel extends ChangeNotifier {
  PageController controller = PageController();
  int currentPage = 0;
  int totalPages = 2;
  bool isTrue = true;
}
