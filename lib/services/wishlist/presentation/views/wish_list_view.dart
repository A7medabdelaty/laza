import 'package:flutter/material.dart';
import 'package:laza/core/utils/widgets/arrow_back_icon.dart';
import 'package:laza/core/utils/widgets/cart_icon.dart';
import 'package:laza/core/utils/widgets/custom_app_bar.dart';
import 'package:laza/services/home/presentation/views/widgets/products_list.dart';
import 'package:laza/services/wishlist/presentation/views/widgets/edit_row.dart';

class WishlistView extends StatelessWidget {
  const WishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        leadingWidget: ArrowBackIcon(),
        actions: [
          CartIcon(),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            WishlistEditRow(),
            SizedBox(height: 20.0),
            ProductsList(),
          ],
        ),
      ),
    );
  }
}
