class Product {
  final String name;
  final String category;
  final double price;
  bool isFavorite;
  int count;

  Product({
    required this.name,
    required this.category,
    required this.price,
    this.isFavorite = false,
    this.count = 0,
  });
}