import 'package:flutter/material.dart';
import 'package:laza/core/utils/widgets/app_bar_custom_widget.dart';
import 'package:laza/core/utils/widgets/arrow_back_icon.dart';
import 'package:laza/core/utils/widgets/custom_app_bar.dart';
import 'package:laza/services/details/presentation/views/widgets/product_review_card.dart';
import 'package:laza/services/details/presentation/views/widgets/product_total_rating.dart';

class ProductReviewsView extends StatelessWidget {
  const ProductReviewsView({super.key});

  static const String routeName = 'product reviews view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        leadingWidget: AppBarCustomWidget(
          icon: ArrowBackIcon(),
        ),
        titleText: 'Reviews',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(height: 20.0),
            const ProductTotalRating(),
            const SizedBox(height: 30.0),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => const ProductReviewCard(),
                itemCount: 20,
              ),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
