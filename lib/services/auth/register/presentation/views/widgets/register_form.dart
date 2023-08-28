import 'package:flutter/material.dart';

import 'custom_text_form_field.dart';
import 'remember_me_widget.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Form(
        child: Column(
          children: [
            AuthCustomTextFormField(
              controller: usernameController,
              label: 'Username',
            ),
            const SizedBox(
              height: 20,
            ),
            AuthCustomTextFormField(
              controller: passwordController,
              label: 'Password',
            ),
            const SizedBox(
              height: 20,
            ),
            AuthCustomTextFormField(
              controller: emailController,
              label: 'email',
            ),
            const SizedBox(
              height: 40,
            ),
            const RememberMeWidget(),
          ],
        ),
      ),
    );
  }
}
