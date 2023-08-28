import 'package:flutter/material.dart';

import '../styles/colors.dart';
import '../styles/text_style.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.labelText,
  });

  final TextEditingController controller;
  final String hintText;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: AppTextStyles.text17,
        ),
        const SizedBox(height: 10.0),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            counterText: '',
            fillColor: AppColors.backgroundLight,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}
