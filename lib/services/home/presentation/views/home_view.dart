import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza/core/utils/custom_error_widget.dart';
import 'package:laza/core/utils/utils.dart';
import 'package:laza/core/utils/widgets/hint_text.dart';
import 'package:laza/core/utils/widgets/title_text.dart';
import 'package:laza/services/home/presentation/view_model/home_cubit.dart';
import 'package:laza/services/home/presentation/views/widgets/brands_list.dart';
import 'package:laza/services/home/presentation/views/widgets/new_arrival_inkwell.dart';
import 'package:laza/services/home/presentation/views/widgets/products_sliver_grid.dart';
import 'package:laza/services/home/presentation/views/widgets/search_row.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const String routeName = 'home view';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleText(text: 'Hello'),
                SizedBox(height: 5.0),
                HintText(text: 'Welcome to Laza.'),
                SizedBox(height: 20.0),
                SearchRow(),
                SizedBox(height: 20.0),
                SizedBox(
                  height: 90.0,
                  child: BrandsList(),
                ),
                SizedBox(height: 10),
                NewArrivalInkwell(),
                SizedBox(height: 15.0),
              ],
            ),
          ),
          BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              if (state is HomeGetProductsSuccess) {
                return ProductsSliverGrid(products: state.products);
              } else if (state is HomeGetProductsFailure) {
                return SliverToBoxAdapter(
                    child: CustomErrorMessage(state.errMessage));
              } else {
                return SliverToBoxAdapter(child: Utils.loadingIndicator());
              }
            },
          ),
        ],
      ),
    );
  }
}
