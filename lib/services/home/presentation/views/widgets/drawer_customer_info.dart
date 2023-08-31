import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/colors.dart';
import 'package:laza/core/utils/styles/text_style.dart';

class DrawerCustomerInfo extends StatelessWidget {
  const DrawerCustomerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            child: Image.asset(
              'assets/images/customer.png',
            ),
          ),
          const SizedBox(width: 15.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Mrh Raju',
                style: AppTextStyles.text17,
              ),
              Text(
                'Verified Profile',
                style: AppTextStyles.text13.copyWith(
                  color: AppColors.textLight,
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: AppColors.backgroundLight,
            ),
            child: const Text('3 Orders'),
          )
        ],
      ),
    );
  }
}
