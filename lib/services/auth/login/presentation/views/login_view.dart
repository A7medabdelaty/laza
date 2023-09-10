import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza/core/utils/custom_error_widget.dart';
import 'package:laza/core/utils/custom_loading_dialog.dart';
import 'package:laza/core/utils/service_locator.dart';
import 'package:laza/core/utils/styles/text_style.dart';
import 'package:laza/core/utils/widgets/arrow_back_icon.dart';
import 'package:laza/core/utils/widgets/custom_app_bar.dart';
import 'package:laza/core/utils/widgets/custom_button.dart';
import 'package:laza/core/utils/widgets/title_text.dart';
import 'package:laza/services/auth/login/data/repos/login_repo_impl.dart';
import 'package:laza/services/auth/login/presentation/views/widgets/login_form.dart';
import 'package:laza/services/layout.dart';

import '../view_model/login_cubit.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const String routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => LoginCubit(getIt.get<LoginRepoImpl>()),
        child: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {
            if (state is LoginSuccess) {
              Navigator.pushNamed(context, AppLayout.routeName);
            }
            if (state is LoginLoading) {
              showLoaderDialog(context);
            }
          },
          builder: (context, state) {
            LoginCubit cubit = BlocProvider.of<LoginCubit>(context);
            if (state is LoginFailure) {
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
                        LoginForm(cubit: cubit),
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
                              text: 'Login',
                              onTap: () {
                                cubit.userLoginWithEmail();
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
