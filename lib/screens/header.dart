import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hello,', style: TextStyle(color: Colors.grey)),
            SizedBox(height: 4),
            Text(
              'Hi James',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        CircleAvatar(
          radius: 22,
          backgroundColor: Color(0xFF4A8AF4),
          child: Icon(Icons.person, color: Colors.white),
        )
      ],
    );
  }
}