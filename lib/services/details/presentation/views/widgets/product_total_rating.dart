import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:laza/core/utils/styles/colors.dart';
import 'package:laza/core/utils/styles/text_style.dart';

import '../add_review_view.dart';

class ProductTotalRating extends StatefulWidget {
  const ProductTotalRating({super.key});

  @override
  State<ProductTotalRating> createState() => _ProductTotalRatingState();
}

class _ProductTotalRatingState extends State<ProductTotalRating> {
  double rating = 4.5;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              '245 Reviews',
              style: AppTextStyles.text15.copyWith(
                fontWeight: FontWeight.w500,
                color: AppColors.darkBlack,
              ),
            ),
            Row(
              children: [
                Text(
                  '$rating',
                  style: AppTextStyles.text13,
                ),
                RatingBar.builder(
                  itemSize: 12.0,
                  itemCount: 5,
                  allowHalfRating: true,
                  unratedColor: AppColors.backgroundLight,
                  initialRating: rating,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                  itemBuilder: (context, index) => const Icon(
                    FontAwesomeIcons.solidStar,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rate) {
                    setState(() {
                      rating = rate;
                    });
                  },
                ),
              ],
            )
          ],
        ),
        MaterialButton(
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            onPressed: () {
              Navigator.pushNamed(context, AddReviewView.routeName);
            },
            color: AppColors.orange,
            child: Row(
              children: [
                const Icon(
                  FontAwesomeIcons.penToSquare,
                  size: 15.0,
                  color: Colors.white,
                ),
                const SizedBox(width: 5.0),
                Text(
                  'Add Review',
                  style: AppTextStyles.text13.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
