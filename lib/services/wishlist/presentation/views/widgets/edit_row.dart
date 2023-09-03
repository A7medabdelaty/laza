import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/colors.dart';
import 'package:laza/core/utils/styles/text_style.dart';

class WishlistEditRow extends StatelessWidget {
  const WishlistEditRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '365 Items',
              style: AppTextStyles.text17,
            ),
            Text(
              'in wishlist',
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
                Icon(Icons.edit),
                SizedBox(width: 5.0),
                Text('Edit'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
