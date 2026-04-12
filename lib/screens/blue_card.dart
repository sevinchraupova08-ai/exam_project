import 'package:flutter/material.dart';

class BlueCard extends StatelessWidget {
  const BlueCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: const LinearGradient(
          colors: [Color(0xFF4A8AF4), Color(0xFF6EA8FF)],
        ),
      ),
      child: Row(
        children: const [
          CircleAvatar(radius: 22),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dr. Imran Syahir',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'General Doctor',
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
          Icon(Icons.arrow_forward_ios, color: Colors.white)
        ],
      ),
    );
  }
}