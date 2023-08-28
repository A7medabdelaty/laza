import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/colors.dart';
import 'package:laza/core/utils/styles/text_style.dart';

class OrderInfoCard extends StatelessWidget {
  const OrderInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Order Info',
          style: AppTextStyles.text17,
        ),
        const SizedBox(height: 15.0),
        Row(
          children: [
            const Text(
              'Subtotal',
              style: AppTextStyles.text15,
            ),
            const Spacer(),
            Text(
              '\$110',
              style: AppTextStyles.text15.copyWith(
                fontWeight: FontWeight.w500,
                color: AppColors.darkBlack,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10.0),
        Row(
          children: [
            const Text(
              'Shipping cost',
              style: AppTextStyles.text15,
            ),
            const Spacer(),
            Text(
              '\$10',
              style: AppTextStyles.text15.copyWith(
                fontWeight: FontWeight.w500,
                color: AppColors.darkBlack,
              ),
            ),
          ],
        ),
        const SizedBox(height: 15.0),
        Row(
          children: [
            const Text(
              'Total',
              style: AppTextStyles.text15,
            ),
            const Spacer(),
            Text(
              '\$120',
              style: AppTextStyles.text15.copyWith(
                fontWeight: FontWeight.w500,
                color: AppColors.darkBlack,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
