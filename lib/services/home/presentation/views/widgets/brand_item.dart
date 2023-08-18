import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/colors.dart';
import 'package:laza/core/utils/styles/text_style.dart';

class BrandItem extends StatelessWidget {
  const BrandItem({super.key, required this.brand});

  final String brand;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        color: AppColors.backgroundLight,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
            ),
            child: Image.asset(
              width: 25.0,
              'assets/images/$brand.png',
              color: AppColors.darkBlack,
            ),
          ),
          const SizedBox(width: 10.0),
          Text(
            brand,
            style: AppTextStyles.text15.copyWith(
                color: AppColors.darkBlack, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
