import 'package:exam_project/models/products.dart';
import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier {
  List<Product> products = [
    Product(name: "Wireless Headphones", category: "Electronics", price: 59.99),
    Product(name: "Smart Watch", category: "Electronics", price: 129.99),
    Product(name: "Running Shoes", category: "Fashion", price: 79.99),
    Product(name: "Backpack", category: "Accessories", price: 39.99),
  ];

List<Product> cart = [];
  List<Product> get favorites =>
      products.where((p) => p.isFavorite).toList();

  void addToCart(Product product) {
  int index = cart.indexWhere((p) => p.name == product.name);

  if (index != -1) {
    cart[index].count++;
  } else {
    product.count = 1;
    cart.add(product);
  }

  notifyListeners();
}

  void toggleFavorite(Product product) {
    product.isFavorite = !product.isFavorite;
    notifyListeners();
  }

  void clearCart() {
  cart.clear();
  notifyListeners();
}
}

