import 'package:exam_project/features/onboarding/data/repository/app_repository.dart';
import 'package:flutter/material.dart';

class NotificationListPage extends StatelessWidget {
  final repo = AppRepository();

  @override
  Widget build(BuildContext context) {
    final notifications = repo.getNotifications();

    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(16),
        itemCount: notifications.length,
        separatorBuilder: (context, index) => SizedBox(height: 8),
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Icon(Icons.notifications_none, size: 24),
                SizedBox(width: 12),
                Expanded(
                  child: Text(
                    notifications[index].message,
                    style: TextStyle(fontSize: 13, height: 1.4),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}