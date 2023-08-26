import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/colors.dart';
import 'package:laza/core/utils/styles/text_style.dart';

class AddReviewTextArea extends StatelessWidget {
  const AddReviewTextArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'What was your experience ?',
          style: AppTextStyles.text17,
        ),
        const SizedBox(height: 10.0),
        TextField(
          decoration: InputDecoration(
            hintText: 'Describe your experience?',
            counterText: '',
            fillColor: AppColors.backgroundLight,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide.none,
            ),
          ),
          minLines: 6,
          maxLines: null,
          keyboardType: TextInputType.multiline,
        ),
      ],
    );
  }
}
