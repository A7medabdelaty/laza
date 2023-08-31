import 'package:flutter/material.dart';
import 'package:laza/core/utils/widgets/arrow_back_icon.dart';
import 'package:laza/core/utils/widgets/custom_app_bar.dart';
import 'package:laza/core/utils/widgets/custom_button.dart';
import 'package:laza/core/utils/widgets/hint_text.dart';
import 'package:laza/core/utils/widgets/title_text.dart';
import 'package:laza/services/auth/forget_password/presentation/views/widgets/new_password_form.dart';
import 'package:laza/services/auth/login/presentation/views/login_view.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});

  static const String routeName = 'new password';

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
            children: [
              const TitleText(text: 'New Password'),
              const NewPasswordForm(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const HintText(text: 'Please write your new password.'),
                  CustomButton(
                    text: 'Reset Password',
                    onTap: () {
                      Navigator.pushNamed(context, LoginView.routeName);
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
