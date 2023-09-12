import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza/services/auth/register/presentation/view_model/register_cubit.dart';

import 'auth_custom_text_form_field.dart';
import 'remember_me_widget.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key, required this.formKey});

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, state) {
        RegisterCubit cubit = BlocProvider.of<RegisterCubit>(context);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                AuthCustomTextFormField(
                  controller: cubit.usernameController,
                  label: 'Username',
                ),
                const SizedBox(
                  height: 20,
                ),
                AuthCustomTextFormField(
                  controller: cubit.passwordController,
                  label: 'Password',
                  passwordField: true,
                ),
                const SizedBox(height: 20.0),
                AuthCustomTextFormField(
                  controller: cubit.emailController,
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
      },
    );
  }
}
