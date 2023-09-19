import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/colors.dart';
import 'package:laza/core/utils/widgets/arrow_back_icon.dart';
import 'package:laza/core/utils/widgets/custom_app_bar.dart';
import 'package:laza/core/utils/widgets/custom_button.dart';
import 'package:laza/services/details/presentation/views/widgets/product_description.dart';
import 'package:laza/services/details/presentation/views/widgets/product_reviews.dart';
import 'package:laza/services/details/presentation/views/widgets/product_size_widget.dart';
import 'package:laza/services/details/presentation/views/widgets/product_title.dart';
import 'package:laza/services/home/data/models/product_model.dart';

import 'widgets/product_cover_image.dart';
import 'widgets/product_more_images.dart';
import 'widgets/product_total_price.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  static const String routeName = 'product details';

  @override
  Widget build(BuildContext context) {
    ProductModel model =
        ModalRoute.of(context)?.settings.arguments as ProductModel;
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ProductCoverImage(coverImg: model.images?.first ?? ''),
            const SizedBox(height: 15),
            ProductTitle(product: model),
            const SizedBox(height: 20.0),
            ProductMoreImages(images: model.images ?? []),
            const SizedBox(height: 15.0),
            const ProductSizeWidget(),
            const SizedBox(height: 20.0),
            ProductDescription(description: model.description ?? ''),
            const SizedBox(height: 15.0),
            const ProductReviews(),
            const SizedBox(height: 20.0),
            ProductTotalPrice(price: '${model.price}'),
            const SizedBox(height: 20.0),
            const CustomButton(text: 'Add to Cart'),
          ],
        ),
      ),
    );
  }
}
