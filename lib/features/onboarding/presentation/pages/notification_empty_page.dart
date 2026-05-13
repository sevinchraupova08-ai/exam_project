import 'package:exam_project/features/auth/cubit/navigation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationEmptyPage extends StatelessWidget {
  const NotificationEmptyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Notifications", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Spacer(),
          const Icon(Icons.notifications_active_outlined, size: 100, color: Colors.orangeAccent),
          const SizedBox(height: 24),
          const Text("No Notification yet", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              context.read<NavigationCubit>().changeTab(AppTab.notifications);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF8E6CEF),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
            ),
            child: const Text("Explore Categories", style: TextStyle(color: Colors.white)),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}