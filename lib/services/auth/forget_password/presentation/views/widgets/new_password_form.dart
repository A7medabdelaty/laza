import 'package:flutter/material.dart';
import 'package:laza/services/auth/register/presentation/views/widgets/custom_text_form_field.dart';

class NewPasswordForm extends StatelessWidget {
  const NewPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController confirmPasswordController =
        TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Form(
        child: Column(
          children: [
            AuthCustomTextFormField(
              controller: passwordController,
              label: 'Password',
            ),
            const SizedBox(height: 20.0,),
            AuthCustomTextFormField(
              controller: confirmPasswordController,
              label: 'Confirm Password',
            ),
          ],
        ),
      ),
    );
  }
}
