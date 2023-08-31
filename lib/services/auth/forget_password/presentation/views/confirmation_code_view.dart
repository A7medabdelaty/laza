import 'package:flutter/material.dart';
import 'package:laza/core/utils/widgets/arrow_back_icon.dart';
import 'package:laza/core/utils/widgets/custom_app_bar.dart';
import 'package:laza/core/utils/widgets/custom_button.dart';
import 'package:laza/core/utils/widgets/hint_text.dart';
import 'package:laza/core/utils/widgets/title_text.dart';
import 'package:laza/services/auth/forget_password/presentation/views/new_password.dart';
import 'package:laza/services/auth/forget_password/presentation/views/widgets/confirmation_code_row.dart';

class ConfirmationCodeView extends StatelessWidget {
  const ConfirmationCodeView({super.key});

  static const String routeName = 'confirmation code';

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
                    const TitleText(text: 'Confirmation Code'),
                    const SizedBox(
                      height: 20,
                    ),
                    Image.asset('assets/images/cloud.png'),
                    const SizedBox(
                      height: 60,
                    ),
                    const ConfirmationCodeRow()
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const HintText(text: '00:20 resend confirmation code.'),
                  const SizedBox(
                    height: 25,
                  ),
                  CustomButton(
                    text: 'Confirm Code',
                    onTap: () {
                      Navigator.pushNamed(context, NewPasswordView.routeName);
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
