import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 8)
        ],
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.home, color: Color(0xFF4A8AF4)),
          Icon(Icons.calendar_today, color: Colors.grey),
          Icon(Icons.chat_bubble_outline, color: Colors.grey),
          Icon(Icons.person_outline, color: Colors.grey),
        ],
      ),
    );
  }
}