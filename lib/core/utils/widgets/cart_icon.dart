import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/colors.dart';
import 'package:laza/services/cart/presentation/views/cart_view.dart';

import 'app_bar_custom_widget.dart';

class CartIcon extends StatelessWidget {
  const CartIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBarCustomWidget(
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
    );
  }
}
