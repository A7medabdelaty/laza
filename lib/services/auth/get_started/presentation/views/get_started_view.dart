import 'package:flutter/material.dart';
import 'package:laza/core/utils/widgets/custom_button.dart';
import 'package:laza/core/utils/widgets/custom_app_bar.dart';
import 'package:laza/core/utils/widgets/title_text.dart';
import 'package:laza/services/auth/get_started/presentation/views/widgets/have_account_widget.dart';
import 'package:laza/services/auth/get_started/presentation/views/widgets/social_media_buttons.dart';
import 'package:laza/services/auth/register/presentation/views/register_view.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  static const String routeName = 'route';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const TitleText(text: 'Let’s Get Started'),
          const SocialMediaButtons(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const HaveAccountText(),
              CustomButton(
                txt: 'Create an Account',
                onTap: () {
                  Navigator.pushNamed(context, RegisterView.routeName);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
