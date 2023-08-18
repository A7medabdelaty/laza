import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/text_style.dart';
import 'package:laza/core/utils/widgets/custom_app_bar.dart';
import 'package:laza/core/utils/widgets/custom_button.dart';
import 'package:laza/core/utils/widgets/title_text.dart';
import 'package:laza/services/auth/login/presentation/views/widgets/login_form.dart';
import 'package:laza/services/home/presentation/views/home_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const String routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height -
                AppBar().preferredSize.height -
                MediaQuery.of(context).padding.top -
                MediaQuery.of(context).padding.bottom,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                children: [
                  TitleText(text: 'Welcome'),
                  Text(
                    'Please enter your data to continue',
                    style: AppTextStyles.text15,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const LoginForm(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'By connecting your account confirm that you agree with our Term and Condition',
                      style: AppTextStyles.text13,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  CustomButton(
                    txt: 'Login',
                    onTap: () {
                      Navigator.pushNamed(context, HomeView.routeName);
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
