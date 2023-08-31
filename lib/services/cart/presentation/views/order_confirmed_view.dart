import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/text_style.dart';
import 'package:laza/core/utils/widgets/arrow_back_icon.dart';
import 'package:laza/core/utils/widgets/custom_app_bar.dart';
import 'package:laza/core/utils/widgets/custom_button.dart';
import 'package:laza/services/cart/presentation/views/widgets/go_to_orders_button.dart';

class OrderConfirmedView extends StatelessWidget {
  const OrderConfirmedView({super.key});

  static const String routeName = 'order confirmed';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        leadingWidget: ArrowBackIcon(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 50.0),
                  Image.asset('assets/images/order_confirmed.png'),
                  const SizedBox(height: 40.0),
                  const Text(
                    'Order Confirmed!',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.text28,
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    'Your order has been confirmed, we will send you confirmation email shortly.',
                    style: AppTextStyles.text15,
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  const OrdersButton(),
                  const SizedBox(height: 40.0),
                ],
              ),
            ),
          ),
          const CustomButton(text: 'Continue Shopping'),
        ],
      ),
    );
  }
}
