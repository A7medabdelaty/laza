import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/text_style.dart';
import 'package:laza/services/details/presentation/views/widgets/rating_info_bar.dart';

class ProductReviewCard extends StatelessWidget {
  const ProductReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          RatingInfoBar(),
          SizedBox(height: 10.0),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...',
            maxLines: 3,
            style: AppTextStyles.text15,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
