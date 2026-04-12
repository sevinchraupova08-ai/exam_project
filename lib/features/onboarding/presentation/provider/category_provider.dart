import 'package:exam_project/models/category_model.dart';
import 'package:flutter/material.dart';

class CategoryProvider extends ChangeNotifier {
  int selectedIndex = -1;

  final List<CategoryModel> categories = [
    CategoryModel(title: 'Covid 19', icon: Icons.coronavirus),
    CategoryModel(title: 'Doctor', icon: Icons.person),
    CategoryModel(title: 'Medicine', icon: Icons.medication),
    CategoryModel(title: 'Hospital', icon: Icons.local_hospital),
  ];

  void select(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}