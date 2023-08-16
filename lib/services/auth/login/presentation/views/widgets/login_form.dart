import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/text_style.dart';
import 'package:laza/services/auth/register/presentation/views/widgets/custom_text_form_field.dart';
import 'package:laza/services/auth/register/presentation/views/widgets/remember_me_widget.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomTextFormField(
            controller: usernameController,
            label: 'Username',
          ),
          const SizedBox(
            height: 20.0,
          ),
          CustomTextFormField(
            controller: passwordController,
            label: 'password',
          ),
          const SizedBox(
            height: 30.0,
          ),
          Text(
            'Forgot password?',
            style: AppTextStyles.text15.copyWith(
              color: const Color(0xffEA4335),
            ),
            textAlign: TextAlign.end,
          ),
          const SizedBox(
            height: 30,
          ),
          const RememberMeWidget(),
        ],
      ),
    );
  }
}
