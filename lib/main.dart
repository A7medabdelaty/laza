import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza/core/utils/services/firebase_service.dart';
import 'package:laza/core/utils/app_routes.dart';
import 'package:laza/core/utils/styles/theme.dart';
import 'package:laza/services/auth/get_started/presentation/views/get_started_view.dart';

import 'bloc_observer.dart';
import 'core/utils/service_locator.dart';


void main() {
  setupServiceLocator();
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseService.configureFirebase();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      systemStatusBarContrastEnforced: true,
    ),
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
      routes: AppRouter.appRoutes(),
      home: const GetStartedView(),
    );
  }
}
