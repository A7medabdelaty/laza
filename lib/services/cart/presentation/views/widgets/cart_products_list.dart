import 'package:flutter/material.dart';

import 'cart_item.dart';

class CartProductsList extends StatelessWidget {
  const CartProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => const CartItem(),
      itemCount: 2,
      shrinkWrap: true,
    );
  }
}
