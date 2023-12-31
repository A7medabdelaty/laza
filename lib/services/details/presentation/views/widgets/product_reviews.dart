import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/colors.dart';
import 'package:laza/core/utils/styles/text_style.dart';
import 'package:laza/services/details/presentation/views/product_reviews_view.dart';
import 'package:laza/services/details/presentation/views/widgets/product_review_card.dart';

class ProductReviews extends StatelessWidget {
  const ProductReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Text(
                'Reviews',
                style: AppTextStyles.text17.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, ProductReviewsView.routeName);
                },
                child: Text(
                  'View All',
                  style: AppTextStyles.text13.copyWith(
                    fontWeight: FontWeight.normal,
                    color: AppColors.textLight,
                  ),
                ),
              ),
            ],
          ),
          const ProductReviewCard(),
        ],
      ),
    );
  }
}
