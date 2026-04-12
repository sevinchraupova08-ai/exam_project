import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  int selectedCategory = 0;
  int bottomIndex = 0;

  void selectCategory(int i) {
    selectedCategory = i;
    notifyListeners();
  }

  void changeBottom(int i) {
    bottomIndex = i;
    notifyListeners();
  }
}