import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/colors.dart';
import 'package:laza/core/utils/widgets/app_bar_custom_widget.dart';
import 'package:laza/core/utils/widgets/arrow_back_icon.dart';
import 'package:laza/core/utils/widgets/custom_app_bar.dart';
import 'package:laza/services/cart/presentation/views/cart_view.dart';
import 'package:laza/services/home/presentation/views/widgets/products_list.dart';
import 'package:laza/services/home/presentation/views/widgets/products_sort_row.dart';

class NewArrivalView extends StatelessWidget {
  const NewArrivalView({super.key});

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
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(height: 20.0),
              ProductsSortRow(),
              SizedBox(height: 5.0),
              ProductsList(),
            ],
          ),
        ),
      ),
    );
  }
}
