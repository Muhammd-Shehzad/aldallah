import 'package:flutter/material.dart';

class ClothesScreenViewModel extends ChangeNotifier {
  PageController _controller = PageController();
  int currentPage = 0;
  int totalPages = 2;
}
