import 'package:exam_project/models/order_model.dart';
import 'package:flutter/material.dart';

class OrderDetailPage extends StatelessWidget {
  final OrderModel order;
  OrderDetailPage({required this.order});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios, size: 18), onPressed: () => Navigator.pop(context)),
        title: Text("Order ${order.id}", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildStatusStep("Delivered", "28 May", false),
            _buildStatusStep("Shipped", "28 May", true),
            _buildStatusStep("Order Confirmed", "28 May", true),
            _buildStatusStep("Order Placed", "28 May", true),
            SizedBox(height: 24),
            Text("Order Items", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(color: Color(0xFFF4F4F4), borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  Icon(Icons.receipt_outlined),
                  SizedBox(width: 12),
                  Text("${order.itemCount} items"),
                  Spacer(),
                  Text("View All", style: TextStyle(color: Color(0xFF8E6CEF))),
                ],
              ),
            ),
            SizedBox(height: 24),
            Text("Shipping details", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 12),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(color: Color(0xFFF4F4F4), borderRadius: BorderRadius.circular(12)),
              child: Text("2715 Ash Dr. San Jose, South Dakota 83475\n121-224-7890", style: TextStyle(height: 1.5)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusStep(String title, String date, bool isCompleted) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 12,
            backgroundColor: isCompleted ? Color(0xFF8E6CEF) : Colors.grey[200],
            child: isCompleted ? Icon(Icons.check, color: Colors.white, size: 15) : null,
          ),
          SizedBox(width: 12),
          Text(title, style: TextStyle(color: isCompleted ? Colors.black : Colors.grey)),
          Spacer(),
          Text(date, style: TextStyle(color: Colors.grey, fontSize: 12)),
        ],
      ),
    );
  }
}