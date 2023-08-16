import 'package:flutter/material.dart';

import '../styles/colors.dart';
import '../styles/text_style.dart';

class HintText extends StatelessWidget {
  const HintText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Text(
        text,
        style: AppTextStyles.text13.copyWith(
          color: AppColors.textLight,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
