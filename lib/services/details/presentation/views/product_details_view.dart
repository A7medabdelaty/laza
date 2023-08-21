import 'package:flutter/material.dart';
import 'package:laza/core/utils/widgets/custom_button.dart';
import 'package:laza/services/details/presentation/views/widgets/product_description.dart';
import 'package:laza/services/details/presentation/views/widgets/product_reviews.dart';
import 'package:laza/services/details/presentation/views/widgets/product_size_widget.dart';
import 'package:laza/services/details/presentation/views/widgets/product_title.dart';
import 'package:laza/services/home/presentation/views/widgets/home_app_bar.dart';

import 'widgets/product_cover_image.dart';
import 'widgets/product_more_images.dart';
import 'widgets/product_total_price.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: HomeCustomAppBar(),
        body: SingleChildScrollView(
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
              CustomButton(txt: 'Add to Cart'),
            ],
          ),
        ),
      ),
    );
  }
}
