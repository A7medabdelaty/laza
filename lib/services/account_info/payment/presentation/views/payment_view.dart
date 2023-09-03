import 'package:flutter/material.dart';
import 'package:laza/core/utils/widgets/custom_button.dart';
import 'package:laza/services/account_info/payment/presentation/views/widgets/add_card_button.dart';
import 'package:laza/services/account_info/payment/presentation/views/widgets/cards_list.dart';
import 'package:laza/services/account_info/payment/presentation/views/widgets/new_card_form.dart';

class PaymentView extends StatelessWidget {
  static const String routeName = 'payment view';

  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CardsList(),
                  SizedBox(height: 15.0),
                  AddCardButton(),
                  SizedBox(height: 20.0),
                  NewCardForm(),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
            CustomButton(text: 'Save Card'),
          ],
        ),
      ),
    );
  }
}
