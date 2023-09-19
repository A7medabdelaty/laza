import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/colors.dart';
import 'package:laza/core/utils/styles/text_style.dart';
import 'package:laza/services/home/data/models/product_model.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({super.key, required this.product});

  final ProductModel product;

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
                    '${product.title}',
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
                  '${product.category?.name}',
                  style: AppTextStyles.text22
                      .copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              Expanded(
                flex: 1,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    '\$${product.price}',
                    style: AppTextStyles.text22.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
