import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/colors.dart';
import 'package:laza/core/utils/styles/text_style.dart';

class AddReviewNameField extends StatelessWidget {
  const AddReviewNameField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Name',
          style: AppTextStyles.text17,
        ),
        const SizedBox(height: 10.0),
        TextFormField(
          maxLength: 30,
          decoration: InputDecoration(
            hintText: 'Type Your Name',
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
