import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/colors.dart';

class CustomVoiceSearchButton extends StatelessWidget {
  const CustomVoiceSearchButton({super.key, this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: const ImageIcon(
          AssetImage('assets/images/voice.png'),
          color: AppColors.backgroundLight,
        ),
      ),
    );
  }
}
