import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/colors.dart';
import 'package:laza/core/utils/widgets/arrow_back_icon.dart';
import 'package:laza/core/utils/widgets/custom_app_bar.dart';
import 'package:laza/core/utils/widgets/custom_button.dart';
import 'package:laza/services/details/presentation/views/widgets/product_description.dart';
import 'package:laza/services/details/presentation/views/widgets/product_reviews.dart';
import 'package:laza/services/details/presentation/views/widgets/product_size_widget.dart';
import 'package:laza/services/details/presentation/views/widgets/product_title.dart';

import 'widgets/product_cover_image.dart';
import 'widgets/product_more_images.dart';
import 'widgets/product_total_price.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  static const String routeName = 'product details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        leadingWidget: const ArrowBackIcon(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const ImageIcon(
              AssetImage('assets/images/bag.png'),
              color: AppColors.darkBlack,
            ),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ProductCoverImage(),
            SizedBox(height: 15),
            ProductTitle(),
            SizedBox(height: 20.0),
            ProductMoreImages(),
            SizedBox(height: 15.0),
            ProductSizeWidget(),
            SizedBox(height: 20.0),
            ProductDescription(),
            SizedBox(height: 15.0),
            ProductReviews(),
            SizedBox(height: 20.0),
            ProductTotalPrice(),
            SizedBox(height: 20.0),
            CustomButton(text: 'Add to Cart'),
          ],
        ),
      ),
    );
  }
}
