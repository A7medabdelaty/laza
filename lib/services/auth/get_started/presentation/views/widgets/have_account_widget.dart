import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/colors.dart';
import 'package:laza/core/utils/styles/text_style.dart';

class HaveAccountText extends StatelessWidget {
  const HaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Already have an account?',
          style: AppTextStyles.text15,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'SignIn',
            style: AppTextStyles.text15.copyWith(
              fontWeight: FontWeight.w500,
              color: AppColors.darkBlack,
            ),
          ),
        )
      ],
    );
  }
}
