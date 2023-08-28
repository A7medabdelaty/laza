import 'package:flutter/material.dart';
import 'package:laza/services/auth/login/presentation/views/widgets/forgot_password_text.dart';
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
          AuthCustomTextFormField(
            controller: usernameController,
            label: 'Username',
          ),
          const SizedBox(
            height: 20.0,
          ),
          AuthCustomTextFormField(
            controller: passwordController,
            label: 'password',
          ),
          const SizedBox(
            height: 30.0,
          ),
          const ForgotPasswordText(),
          const SizedBox(
            height: 30,
          ),
          const RememberMeWidget(),
        ],
      ),
    );
  }
}
