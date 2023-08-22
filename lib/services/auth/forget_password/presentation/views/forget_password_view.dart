import 'package:flutter/material.dart';

import 'package:laza/core/utils/widgets/arrow_back_icon.dart';
import 'package:laza/core/utils/widgets/custom_app_bar.dart';
import 'package:laza/core/utils/widgets/custom_button.dart';
import 'package:laza/core/utils/widgets/hint_text.dart';
import 'package:laza/core/utils/widgets/title_text.dart';
import 'package:laza/services/auth/register/presentation/views/widgets/custom_text_form_field.dart';

import 'confirmation_code_view.dart';

class ForgetPasswordView extends StatelessWidget {
  ForgetPasswordView({super.key});

  static const String routeName = 'forget password';
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        leadingWidget: ArrowBackIcon(),
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height -
                AppBar().preferredSize.height -
                MediaQuery.of(context).padding.top -
                MediaQuery.of(context).padding.bottom,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    const TitleText(text: 'Forgot Password'),
                    const SizedBox(
                      height: 20,
                    ),
                    Image.asset('assets/images/cloud.png'),
                    CustomTextFormField(
                      controller: emailController,
                      label: 'Email Address',
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const HintText(
                      text:
                          'Please write your email to receive a confirmation code to set a new password.'),
                  const SizedBox(
                    height: 25,
                  ),
                  CustomButton(
                    txt: 'Confirm Mail',
                    onTap: () {
                      Navigator.pushNamed(
                          context, ConfirmationCodeView.routeName);
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
