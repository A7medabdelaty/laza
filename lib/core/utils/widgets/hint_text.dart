import 'package:flutter/material.dart';

import '../styles/colors.dart';
import '../styles/text_style.dart';

class HintText extends StatelessWidget {
  const HintText({super.key, required this.text, this.padding = 0.0});
  final String text;
  final double padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
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
