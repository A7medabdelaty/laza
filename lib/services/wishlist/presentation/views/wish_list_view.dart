import 'package:flutter/material.dart';
import 'package:laza/services/home/presentation/views/widgets/products_list.dart';
import 'package:laza/services/wishlist/presentation/views/widgets/edit_row.dart';

class WishlistView extends StatelessWidget {
  const WishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(height: 20.0),
            WishlistEditRow(),
            SizedBox(height: 20.0),
            ProductsList(products: []),
          ],
        ),
      ),
    );
  }
}
