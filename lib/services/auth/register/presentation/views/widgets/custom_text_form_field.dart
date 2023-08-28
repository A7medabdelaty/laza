import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/colors.dart';
import 'package:laza/core/utils/styles/text_style.dart';

class AuthCustomTextFormField extends StatelessWidget {
  const AuthCustomTextFormField(
      {super.key, required this.controller, required this.label});

  final TextEditingController controller;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.darkBlack),
        ),
        label: Text(label),
        fillColor: AppColors.darkBlack,
        focusColor: AppColors.darkBlack,
        hoverColor: AppColors.darkBlack,
      ),
      cursorColor: AppColors.darkBlack,
      style: AppTextStyles.text15.copyWith(
        color: AppColors.darkBlack,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
