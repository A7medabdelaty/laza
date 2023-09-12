import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza/core/utils/custom_error_widget.dart';
import 'package:laza/core/utils/service_locator.dart';
import 'package:laza/core/utils/utils.dart';
import 'package:laza/core/utils/widgets/arrow_back_icon.dart';
import 'package:laza/core/utils/widgets/custom_app_bar.dart';
import 'package:laza/core/utils/widgets/custom_button.dart';
import 'package:laza/core/utils/widgets/title_text.dart';
import 'package:laza/services/auth/register/data/repos/register_repo_impl.dart';
import 'package:laza/services/auth/register/presentation/view_model/register_cubit.dart';
import 'package:laza/services/auth/register/presentation/views/widgets/register_form.dart';
import 'package:laza/services/layout.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  static const String routeName = 'register';

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return BlocProvider(
      create: (context) => RegisterCubit(getIt.get<RegisterRepoImpl>()),
      child: Scaffold(
        body: BlocConsumer<RegisterCubit, RegisterState>(
          listener: (context, state) {
            if (state is RegisterUserSuccess) {
              Navigator.pushReplacementNamed(context, AppLayout.routeName);
            }
            if (state is RegisterUserLoading) {
              Utils.showLoaderDialog(context);
            }
          },
          builder: (context, state) {
            RegisterCubit cubit = BlocProvider.of<RegisterCubit>(context);
            if (state is RegisterUserFailure) {
              Navigator.pop(context);
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
                        const TitleText(text: 'Sign up'),
                        RegisterForm(formKey: formKey),
                        CustomButton(
                          text: 'Sign up',
                          onTap: () {
                            cubit.formValidation(formKey);
                          },
                        ),
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
