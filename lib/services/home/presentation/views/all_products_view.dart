import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza/core/utils/custom_error_widget.dart';
import 'package:laza/core/utils/styles/colors.dart';
import 'package:laza/core/utils/utils.dart';
import 'package:laza/core/utils/widgets/app_bar_custom_widget.dart';
import 'package:laza/core/utils/widgets/arrow_back_icon.dart';
import 'package:laza/core/utils/widgets/custom_app_bar.dart';
import 'package:laza/services/cart/presentation/views/cart_view.dart';
import 'package:laza/services/home/presentation/view_model/home_cubit.dart';
import 'package:laza/services/home/presentation/views/widgets/products_sliver_grid.dart';
import 'package:laza/services/home/presentation/views/widgets/products_sort_row.dart';

class AllProductsView extends StatelessWidget {
  const AllProductsView({super.key});

  static const String routeName = 'all products';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          leadingWidget: const ArrowBackIcon(),
          actions: [
            AppBarCustomWidget(
              icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, CartView.routeName);
                },
                icon: const ImageIcon(
                  AssetImage('assets/images/bag.png'),
                  size: 25.0,
                  color: AppColors.darkBlack,
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              if (state is HomeGetProductsSuccess) {
                return CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Column(
                        children: [
                          const SizedBox(height: 20.0),
                          ProductsSortRow(count: state.products.length),
                          const SizedBox(height: 5.0),
                        ],
                      ),
                    ),
                    ProductsSliverGrid(products: state.products),
                  ],
                );
              } else if (state is HomeGetProductsFailure) {
                return CustomErrorMessage(state.errMessage);
              } else {
                return Center(
                  child: Utils.loadingIndicator(),
                );
              }
            },
          ),
        ));
  }
}
