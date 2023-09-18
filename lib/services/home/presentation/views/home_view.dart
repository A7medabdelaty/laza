import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza/core/utils/custom_error_widget.dart';
import 'package:laza/core/utils/utils.dart';
import 'package:laza/core/utils/widgets/hint_text.dart';
import 'package:laza/core/utils/widgets/title_text.dart';
import 'package:laza/services/home/presentation/view_model/home_cubit.dart';
import 'package:laza/services/home/presentation/views/widgets/brands_list.dart';
import 'package:laza/services/home/presentation/views/widgets/new_arrival_inkwell.dart';
import 'package:laza/services/home/presentation/views/widgets/search_row.dart';

import 'widgets/products_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const String routeName = 'home view';

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
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
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            child: Column(
              children: [
                const NewArrivalInkwell(),
                BlocBuilder<HomeCubit, HomeState>(
                  builder: (context, state) {
                    if (state is HomeGetProductsFailure) {
                      return CustomErrorMessage(state.errMessage);
                    } else if (state is HomeGetProductsSuccess) {
                      return ProductsList(products: state.products,);
                    }else{
                      return Utils.loadingIndicator();
                    }
                  },
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
