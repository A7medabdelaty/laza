import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/colors.dart';
import 'package:laza/core/utils/styles/text_style.dart';

class ProductsSortRow extends StatelessWidget {
  const ProductsSortRow({super.key, required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$count Items',
              style: AppTextStyles.text17,
            ),
            const Text(
              'Available in stock',
              style: AppTextStyles.text15,
            ),
          ],
        ),
        const Spacer(),
        InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: AppColors.backgroundLight,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const Row(
              children: [
                Icon(Icons.list),
                SizedBox(width: 5.0),
                Text('Sort'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
