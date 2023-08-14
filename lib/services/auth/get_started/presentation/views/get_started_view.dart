import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/text_style.dart';
import 'package:laza/services/auth/get_started/presentation/views/widgets/create_account_button.dart';
import 'package:laza/services/auth/get_started/presentation/views/widgets/custom_app_bar.dart';
import 'package:laza/services/auth/get_started/presentation/views/widgets/have_account_widget.dart';
import 'package:laza/services/auth/get_started/presentation/views/widgets/social_media_buttons.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  static const String routeName = 'route';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: GetStartedAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: Text(
              'Let’s Get Started',
              style: AppTextStyles.text28,
            ),
          ),
          SocialMediaButtons(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HaveAccountText(),
              CreateAccountButton(),
            ],
          ),
        ],
      ),
    );
  }
}
