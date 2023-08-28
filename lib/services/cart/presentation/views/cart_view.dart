import 'package:flutter/material.dart';
import 'package:laza/core/utils/widgets/arrow_back_icon.dart';
import 'package:laza/core/utils/widgets/custom_app_bar.dart';
import 'package:laza/core/utils/widgets/custom_button.dart';
import 'package:laza/services/cart/presentation/views/widgets/address_card.dart';
import 'package:laza/services/cart/presentation/views/widgets/cart_products_list.dart';
import 'package:laza/services/cart/presentation/views/widgets/order_info_card.dart';
import 'package:laza/services/cart/presentation/views/widgets/payment_card.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  static const String routeName = 'cart view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        leadingWidget: ArrowBackIcon(),
        titleText: 'Cart',
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height -
                AppBar().preferredSize.height -
                MediaQuery.of(context).padding.top -
                MediaQuery.of(context).padding.bottom,
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    CartProductsList(),
                    SizedBox(height: 20.0),
                    AddressCard(),
                    SizedBox(height: 15.0),
                    PaymentCard(),
                    SizedBox(height: 20.0),
                    OrderInfoCard(),
                    SizedBox(height: 20.0),
                  ],
                ),
              ),
              CustomButton(txt: 'Checkout'),
            ],
          ),
        ),
      ),
    );
  }
}
