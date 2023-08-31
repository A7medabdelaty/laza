import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/colors.dart';
import 'package:laza/core/utils/styles/text_style.dart';

class OrdersButton extends StatelessWidget {
  const OrdersButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(
          AppColors.backgroundLight,
        ),
        shape: MaterialStatePropertyAll(
          ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(
              10.0,
            ),
          ),
        ),
      ),
      child: Text(
        'Go To Orders',
        style: AppTextStyles.text17.copyWith(
          color: AppColors.textLight,
        ),
      ),
    );
  }
}
