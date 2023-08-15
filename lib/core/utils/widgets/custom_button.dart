import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/colors.dart';
import 'package:laza/core/utils/styles/text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.txt, this.onTap});

  final String txt;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        color: AppColors.primaryColor,
        child: Text(
          txt,
          style: AppTextStyles.text17.copyWith(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
