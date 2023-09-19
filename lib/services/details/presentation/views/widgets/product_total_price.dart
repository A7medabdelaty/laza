import 'package:flutter/cupertino.dart';
import 'package:laza/core/utils/styles/colors.dart';
import 'package:laza/core/utils/styles/text_style.dart';

class ProductTotalPrice extends StatelessWidget {
  const ProductTotalPrice({super.key, required this.price});
  final String price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Total Price',
                style: AppTextStyles.text15.copyWith(
                  color: AppColors.darkBlack,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 5.0),
              Text(
                'with VAT,SD',
                style: AppTextStyles.text11.copyWith(
                  color: AppColors.textLight,
                ),
              ),
            ],
          ),
          Text(
            '\$$price',
            style: AppTextStyles.text17.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
