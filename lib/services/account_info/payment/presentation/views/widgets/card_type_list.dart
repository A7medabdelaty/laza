import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/colors.dart';
import 'package:laza/services/account_info/payment/data/card_model.dart';

class CardTypeList extends StatefulWidget {
  const CardTypeList({super.key});

  @override
  State<CardTypeList> createState() => _CardTypeListState();
}

class _CardTypeListState extends State<CardTypeList> {
  CardModel masterCard = CardModel('mastercard', true);
  CardModel paypalCard = CardModel('paypal', false);
  CardModel bankCard = CardModel('bank', false);

  @override
  Widget build(BuildContext context) {
    List<CardModel> types = [masterCard, paypalCard, bankCard];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: types
          .map(
            (e) => InkWell(
              onTap: () {
                masterCard.isSelected = false;
                paypalCard.isSelected = false;
                bankCard.isSelected = false;
                setState(() {
                  e.isSelected = true;
                });
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                decoration: e.isSelected
                    ? BoxDecoration(
                        color: const Color(0xffFFEEE3),
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: const Color(0xffFF5F00),
                        ))
                    : BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.backgroundLight,
                      ),
                height: 50,
                width: 100,
                child: Image.asset(
                  'assets/images/${e.name}_logo.png',
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
