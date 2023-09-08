import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza/core/utils/custom_error_widget.dart';
import 'package:laza/core/utils/custom_loading_dialog.dart';
import 'package:laza/core/utils/service_locator.dart';
import 'package:laza/core/utils/widgets/arrow_back_icon.dart';
import 'package:laza/core/utils/widgets/custom_button.dart';
import 'package:laza/core/utils/widgets/custom_app_bar.dart';
import 'package:laza/core/utils/widgets/title_text.dart';
import 'package:laza/services/auth/get_started/data/repos/get_started_repo_impl.dart';
import 'package:laza/services/auth/get_started/presentation/view_model/get_started_cubit.dart';
import 'package:laza/services/auth/get_started/presentation/views/widgets/have_account_widget.dart';
import 'package:laza/services/auth/get_started/presentation/views/widgets/social_media_buttons.dart';
import 'package:laza/services/auth/register/presentation/views/register_view.dart';
import 'package:laza/services/layout.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  static const String routeName = 'route';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetStartedCubit(getIt.get<GetStartedRepoImpl>()),
      child: BlocConsumer<GetStartedCubit, GetStartedState>(
        listener: (context, state) {
          if (state is GetStartedGoogleSignInSuccess) {
            Navigator.pushNamed(context, AppLayout.routeName);
          }
          if (state is GetStartedGoogleSignInLoading) {
            showLoaderDialog(context);
          }
        },
        builder: (context, state) {
          if (state is GetStartedGoogleSignInFailure) {
            return CustomErrorMessage(state.errMessage);
          } else {
            GetStartedCubit cubit = BlocProvider.of<GetStartedCubit>(context);
            return Scaffold(
              appBar: const CustomAppBar(
                leadingWidget: ArrowBackIcon(),
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TitleText(text: 'Let’s Get Started'),
                  SocialMediaButtons(cubit: cubit),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const HaveAccountText(),
                      CustomButton(
                        text: 'Create an Account',
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
        },
      ),
    );
  }
}
