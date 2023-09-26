import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:laza/core/utils/styles/colors.dart';
import 'package:laza/core/utils/styles/text_style.dart';
import 'package:laza/services/details/presentation/views/product_details_view.dart';
import 'package:laza/services/home/data/models/product_model.dart';
import 'package:laza/services/wishlist/presentation/view_model/wishlist_cubit.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WishlistCubit, WishlistState>(
      builder: (context, state) {
        WishlistCubit cubit = BlocProvider.of(context);
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              ProductDetailsView.routeName,
              arguments: product,
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                alignment: AlignmentDirectional.topEnd,
                children: [
                  AspectRatio(
                    aspectRatio: 160 / 205,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: CachedNetworkImage(
                        imageUrl: '${product.images?.first}',
                        errorWidget: (context, url, error) {
                          return Image.network(
                              'https://t3.ftcdn.net/jpg/02/48/42/64/360_F_248426448_NVKLywWqArG2ADUxDq6QprtIzsF82dMF.jpg');
                        },
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      cubit.onWishlistIconPressed(product: product);
                    },
                    icon: (product.inWishlist ?? false)
                        ? const Icon(
                            FontAwesomeIcons.solidHeart,
                            color: AppColors.red,
                          )
                        : const Icon(
                            FontAwesomeIcons.heart,
                            color: AppColors.textLight,
                          ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Text(
                '${product.title}',
                style: AppTextStyles.text11,
              ),
              const SizedBox(height: 5),
              Text(
                '\$${product.price?.round()}',
                style: AppTextStyles.text13.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
