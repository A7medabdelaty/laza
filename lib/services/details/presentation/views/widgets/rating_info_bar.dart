import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:laza/core/utils/styles/colors.dart';
import 'package:laza/core/utils/styles/text_style.dart';

class RatingInfoBar extends StatefulWidget {
  const RatingInfoBar({super.key});

  @override
  State<RatingInfoBar> createState() => _RatingInfoBarState();
}

class _RatingInfoBarState extends State<RatingInfoBar> {
  double rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const CircleAvatar(
          backgroundColor: Colors.red,
          radius: 25.0,
          backgroundImage: AssetImage('assets/images/customer.png'),
        ),
        const SizedBox(width: 10.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ronald Richards',
              style: AppTextStyles.text15.copyWith(
                color: AppColors.darkBlack,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 5.0),
            Row(
              children: [
                const Icon(
                  Icons.watch_later_outlined,
                  size: 15.0,
                  color: AppColors.textLight,
                ),
                const SizedBox(width: 5.0),
                Text(
                  '13 Sep, 2020',
                  style: AppTextStyles.text11.copyWith(
                    color: AppColors.textLight,
                  ),
                ),
              ],
            )
          ],
        ),
        const Spacer(),
        Column(
          children: [
            RichText(
              text: TextSpan(
                text: '$rating ',
                style: AppTextStyles.text15.copyWith(
                    color: AppColors.darkBlack, fontWeight: FontWeight.w500),
                children: [
                  TextSpan(
                    text: 'rating',
                    style: AppTextStyles.text11.copyWith(
                      color: AppColors.textLight,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 5.0),
            RatingBar.builder(
              itemSize: 12.0,
              itemCount: 5,
              allowHalfRating: true,
              unratedColor: AppColors.backgroundLight,
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
            )
          ],
        )
      ],
    );
  }
}
