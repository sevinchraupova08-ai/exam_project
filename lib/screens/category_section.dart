import 'package:exam_project/features/onboarding/presentation/provider/category_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CategoryProvider>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(provider.categories.length, (index) {
        final item = provider.categories[index];
        final isSelected = provider.selectedIndex == index;

        return GestureDetector(
          onTap: () => provider.select(index),
          child: Column(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: isSelected
                      ? const Color(0xFF4A8AF4)
                      : Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 6,
                    )
                  ],
                ),
                child: Icon(
                  item.icon,
                  color: isSelected
                      ? Colors.white
                      : const Color(0xFF4A8AF4),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                item.title,
                style: TextStyle(fontSize: 12, color: Colors.grey[700]),
              ),
            ],
          ),
        );
      }),
    );
  }
}