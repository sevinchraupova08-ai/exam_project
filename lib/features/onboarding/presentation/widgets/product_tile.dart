import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final String title;
  final bool isFav;
  final VoidCallback onFav;

  const ProductTile({
    super.key,
    required this.title,
    required this.isFav,
    required this.onFav,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Colors.black12,
          )
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          const SizedBox(width: 12),

          Expanded(
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),

          IconButton(
            onPressed: onFav,
            icon: Icon(
              Icons.favorite,
              color: isFav ? Colors.red : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}