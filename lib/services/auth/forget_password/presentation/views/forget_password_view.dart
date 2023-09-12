import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza/core/utils/custom_error_widget.dart';
import 'package:laza/core/utils/service_locator.dart';
import 'package:laza/core/utils/utils.dart';

import 'package:laza/core/utils/widgets/arrow_back_icon.dart';
import 'package:laza/core/utils/widgets/custom_app_bar.dart';
import 'package:laza/core/utils/widgets/custom_button.dart';
import 'package:laza/core/utils/widgets/hint_text.dart';
import 'package:laza/core/utils/widgets/title_text.dart';
import 'package:laza/services/auth/forget_password/data/repos/forget_password_repo_impl.dart';
import 'package:laza/services/auth/forget_password/presentation/view_model/forget_password_cubit.dart';
import 'package:laza/services/auth/login/presentation/views/login_view.dart';
import 'package:laza/services/auth/register/presentation/views/widgets/auth_custom_text_form_field.dart';

class ForgetPasswordView extends StatelessWidget {
  ForgetPasswordView({super.key});

  static const String routeName = 'forget password';
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return ForgetPasswordCubit(getIt.get<ForgetPasswordRepoImpl>());
      },
      child: Scaffold(
        body: BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
          listener: (context, state) {
            if (state is SendForgetPasswordSuccess) {
              Navigator.popUntil(
                  context, ModalRoute.withName(LoginView.routeName));
              Utils.showSnackBar(
                  context: context, text: 'Email Was Sent, check your mail');
            }
            if (state is SendForgetPasswordLoading) {
              Utils.loadingIndicator();
            }
          },
          builder: (context, state) {
            ForgetPasswordCubit cubit =
                BlocProvider.of<ForgetPasswordCubit>(context);
            if (state is SendForgetPasswordFailure) {
              return CustomErrorMessage(state.errMessage);
            } else {
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
                              AuthCustomTextFormField(
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
                              text: 'Confirm Mail',
                              onTap: () {
                                cubit.sendResetPasswordEmail(
                                  email: emailController.text,
                                );
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
          },
        ),
      ),
    );
  }
}
