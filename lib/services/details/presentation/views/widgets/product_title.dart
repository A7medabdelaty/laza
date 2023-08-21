import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/colors.dart';
import 'package:laza/core/utils/styles/text_style.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  flex: 4,
                  child: Text(
                    'Men\'s Printed Pullover Hoodie',
                    style: AppTextStyles.text13
                        .copyWith(color: AppColors.textLight),
                  )),
              Expanded(
                  flex: 1,
                  child: Text(
                    'Price',
                    style: AppTextStyles.text13
                        .copyWith(color: AppColors.textLight),
                  )),
            ],
          ),
          const SizedBox(height: 8.0),
          Row(
            children: [
              Expanded(
                flex: 4,
                child: Text(
                  'Nike Club Fleece',
                  style: AppTextStyles.text22
                      .copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  '\$120',
                  style: AppTextStyles.text22
                      .copyWith(fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
