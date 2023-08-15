import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/theme.dart';
import 'package:laza/services/auth/get_started/presentation/views/get_started_view.dart';
import 'package:laza/services/auth/register/presentation/views/register_view.dart';
import 'package:laza/services/home/presentation/views/home_view.dart';
import 'package:laza/services/on_boarding/presentation/views/on_boarding_view.dart';

void main() {
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
        OnBoardingView.routeName : (context) => const OnBoardingView(),
        HomeView.routeName : (context) => const HomeView(),
        GetStartedView.routeName : (context) => const GetStartedView(),
        RegisterView.routeName : (context) => const RegisterView(),
      },
      home: const OnBoardingView(),
    );
  }
}
