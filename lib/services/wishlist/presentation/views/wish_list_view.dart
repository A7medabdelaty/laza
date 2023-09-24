import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza/core/utils/custom_error_widget.dart';
import 'package:laza/core/utils/utils.dart';
import 'package:laza/services/home/presentation/views/widgets/products_sliver_grid.dart';
import 'package:laza/services/wishlist/presentation/view_model/wishlist_cubit.dart';
import 'package:laza/services/wishlist/presentation/views/widgets/edit_row.dart';

class WishlistView extends StatelessWidget {
  const WishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WishlistCubit, WishlistState>(
      builder: (context, state) {
        WishlistCubit cubit = BlocProvider.of(context);
        if (state is GetWishlistProductsSuccess) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      const SizedBox(height: 20.0),
                      WishlistEditRow(productsCount: cubit.wishList.length),
                      const SizedBox(height: 20.0),
                    ],
                  ),
                ),
                ProductsSliverGrid(products: cubit.wishList),
              ],
            ),
          );
        } else if (state is GetWishlistProductsFailure) {
          return CustomErrorMessage(state.errMessage);
        } else {
          return Utils.loadingIndicator();
        }
      },
    );
  }
}
