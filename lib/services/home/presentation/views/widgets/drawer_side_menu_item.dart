import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/colors.dart';
import 'package:laza/core/utils/styles/text_style.dart';

class DrawerSideMenuItem extends StatelessWidget {
  const DrawerSideMenuItem({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 10.0),
          Text(
            text,
            style: AppTextStyles.text15.copyWith(color: AppColors.darkBlack),
          ),
        ],
      ),
    );
  }
}
