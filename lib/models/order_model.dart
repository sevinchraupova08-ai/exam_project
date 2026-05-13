class OrderModel {
  final String id;
  final int itemCount;
  final String status; 
  final String date;

  OrderModel({
    required this.id,
    required this.itemCount,
    required this.status,
    required this.date,
  });
}