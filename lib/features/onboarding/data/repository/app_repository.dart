import 'package:exam_project/models/notification_model.dart';
import 'package:exam_project/models/order_model.dart';


class AppRepository {
  List<AppNotification> getNotifications() {
    return [
      AppNotification(
        message: "Gilbert, you placed and order check your order history for full details",
        iconType: "order",
      ),
      AppNotification(
        message: "Gilbert, Thank you for shopping with us we have canceled order #24568.",
        iconType: "cancel",
      ),
      AppNotification(
        message: "Gilbert, your Order #24568 has been confirmed check your order history for f...",
        iconType: "confirm",
      ),
    ];
  }
  List<OrderModel> getOrdersByStatus(String status) {
    List<OrderModel> allOrders = [
      OrderModel(id: "#456765", itemCount: 4, status: "Processing", date: "28 May"),
      OrderModel(id: "#454569", itemCount: 2, status: "Processing", date: "27 May"),
      OrderModel(id: "#454809", itemCount: 1, status: "Processing", date: "26 May"),
      
      OrderModel(id: "#123456", itemCount: 3, status: "Shipped", date: "25 May"),
      OrderModel(id: "#789012", itemCount: 5, status: "Shipped", date: "24 May"),
      
      OrderModel(id: "#111222", itemCount: 2, status: "Delivered", date: "20 May"),
      
      OrderModel(id: "#333444", itemCount: 1, status: "Returned", date: "15 May"),
      
      OrderModel(id: "#555666", itemCount: 10, status: "Canceled", date: "10 May"),
    ];

    return allOrders.where((order) => order.status == status).toList();
  }
}