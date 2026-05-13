import 'package:exam_project/features/auth/cubit/order_cubit.dart';
import 'package:exam_project/features/onboarding/data/repository/app_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'order_detail_page.dart';

class OrdersPage extends StatelessWidget {
  final List<String> statuses = ["Processing", "Shipped", "Delivered", "Returned", "Canceled"];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OrderStatusCubit(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: Text("Orders", style: TextStyle(fontWeight: FontWeight.bold)), centerTitle: true, elevation: 0, backgroundColor: Colors.white),
        body: Column(
          children: [
            Container(
              height: 50,
              child: BlocBuilder<OrderStatusCubit, String>(
                builder: (context, activeStatus) {
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: statuses.length,
                    itemBuilder: (context, index) {
                      bool isActive = statuses[index] == activeStatus;
                      return GestureDetector(
                        onTap: () => context.read<OrderStatusCubit>().changeStatus(statuses[index]),
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            color: isActive ? Color(0xFF8E6CEF) : Colors.grey[200],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(child: Text(statuses[index], style: TextStyle(color: isActive ? Colors.white : Colors.black))),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
        
            Expanded(
              child: BlocBuilder<OrderStatusCubit, String>(
                builder: (context, activeStatus) {
                  final orders = AppRepository().getOrdersByStatus(activeStatus);
                  return ListView.builder(
                    padding: EdgeInsets.all(16),
                    itemCount: orders.length,
                    itemBuilder: (context, index) {
                      return Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        color: Color(0xFFF4F4F4),
                        child: ListTile(
                          leading: Icon(Icons.receipt_outlined),
                          title: Text("Order ${orders[index].id}", style: TextStyle(fontWeight: FontWeight.bold)),
                          subtitle: Text("${orders[index].itemCount} items"),
                          trailing: Icon(Icons.arrow_forward_ios, size: 16),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_) => OrderDetailPage(order: orders[index])));
                          },
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}