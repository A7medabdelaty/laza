import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/colors.dart';
import 'package:laza/core/utils/styles/text_style.dart';

class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(20.0),
        color: AppColors.primaryColor,
        child: Text(
          'Create an Account',
          style: AppTextStyles.text17.copyWith(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
