import 'package:flutter/material.dart';
import 'package:laza/services/auth/login/presentation/view_model/login_cubit.dart';
import 'package:laza/services/auth/login/presentation/views/widgets/forgot_password_text.dart';
import 'package:laza/services/auth/register/presentation/views/widgets/custom_text_form_field.dart';
import 'package:laza/services/auth/register/presentation/views/widgets/remember_me_widget.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key, required this.cubit});

  final LoginCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AuthCustomTextFormField(
            controller: cubit.emailController,
            label: 'Email',
          ),
          const SizedBox(
            height: 20.0,
          ),
          AuthCustomTextFormField(
            controller: cubit.passwordController,
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
