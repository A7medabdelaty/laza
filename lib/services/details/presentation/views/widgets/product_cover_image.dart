import 'package:flutter/material.dart';

class ProductCoverImage extends StatelessWidget {
  const ProductCoverImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 375 / 418,
      child: Image.asset(fit: BoxFit.fill, 'assets/images/product_1.png'),
    );
  }
}
