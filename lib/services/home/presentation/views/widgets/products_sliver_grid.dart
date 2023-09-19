import 'package:flutter/material.dart';
import 'package:laza/services/home/data/models/product_model.dart';
import 'package:laza/services/home/presentation/views/widgets/product_item.dart';

class ProductsSliverGrid extends StatelessWidget {
  const ProductsSliverGrid({super.key, required this.products});

  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        childCount: products.length,
        (context, index) {
          return ProductItem(product: products[index]);
        },
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 260,
        crossAxisSpacing: 15.0,
        mainAxisSpacing: 15.0,
      ),
    );
  }
}
