import 'package:flutter/material.dart';
import 'package:laza/services/home/data/models/product_model.dart';
import 'package:laza/services/home/presentation/views/widgets/product_item.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({super.key, required this.products});

  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15.0),
        if (products.isNotEmpty)
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 260,
              crossAxisSpacing: 15.0,
              mainAxisSpacing: 15.0,
            ),
            itemBuilder: (context, index) {
              return ProductlItem(product: products[index]);
            },
            itemCount: products.length,
          ),
        if (products.isEmpty)
          const Center(
            child: Text('No Products!!'),
          ),
      ],
    );
  }
}
