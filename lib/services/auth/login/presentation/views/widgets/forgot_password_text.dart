import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/text_style.dart';
import 'package:laza/services/auth/forget_password/presentation/views/forget_password_view.dart';

class ForgotPasswordText extends StatelessWidget {
  const ForgotPasswordText({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(
            context,
            ForgetPasswordView.routeName,
          );
        },
        child: Text(
          'Forgot password?',
          style: AppTextStyles.text15.copyWith(
            color: const Color(0xffEA4335),
          ),
        ),
      ),
    );
  }
}
