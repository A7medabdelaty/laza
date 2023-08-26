import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:laza/core/utils/styles/theme.dart';
import 'package:laza/services/auth/forget_password/presentation/views/confirmation_code_view.dart';
import 'package:laza/services/auth/forget_password/presentation/views/forget_password_view.dart';
import 'package:laza/services/auth/forget_password/presentation/views/new_password.dart';
import 'package:laza/services/auth/get_started/presentation/views/get_started_view.dart';
import 'package:laza/services/auth/login/presentation/views/login_view.dart';
import 'package:laza/services/auth/register/presentation/views/register_view.dart';
import 'package:laza/services/details/presentation/views/add_review_view.dart';
import 'package:laza/services/details/presentation/views/product_details_view.dart';
import 'package:laza/services/home/presentation/views/home_view.dart';
import 'package:laza/services/on_boarding/presentation/views/on_boarding_view.dart';

import 'services/details/presentation/views/product_reviews_view.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        systemStatusBarContrastEnforced: true),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
      routes: {
        OnBoardingView.routeName: (context) => const OnBoardingView(),
        HomeView.routeName: (context) => const HomeView(),
        GetStartedView.routeName: (context) => const GetStartedView(),
        RegisterView.routeName: (context) => const RegisterView(),
        LoginView.routeName: (context) => const LoginView(),
        ForgetPasswordView.routeName: (context) => ForgetPasswordView(),
        ConfirmationCodeView.routeName: (context) =>
            const ConfirmationCodeView(),
        NewPasswordView.routeName: (context) => const NewPasswordView(),
        ProductDetailsView.routeName: (context) => const ProductDetailsView(),
        ProductReviewsView.routeName: (context) => const ProductReviewsView(),
        AddReviewView.routeName: (context) => const AddReviewView(),
      },
      home: const HomeView(),
    );
  }
}
