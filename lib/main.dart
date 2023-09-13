import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza/core/utils/services/cache_helper.dart';
import 'package:laza/core/utils/app_routes.dart';
import 'package:laza/core/utils/services/firebase_service.dart';
import 'package:laza/core/utils/styles/theme.dart';
import 'package:laza/services/auth/get_started/presentation/views/get_started_view.dart';
import 'package:laza/services/layout.dart';

import 'bloc_observer.dart';
import 'core/utils/service_locator.dart';

void main() async {
  setupServiceLocator();
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseService.configureFirebase();
  await CacheHelper.init();
  runApp(const MyApp());
}

Widget selectHomeScreen() {
  if (FirebaseAuth.instance.currentUser != null &&
      CacheHelper.getData(key: 'remember me') == true) {
    return const AppLayout();
  } else {
    return const GetStartedView();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
      routes: AppRouter.appRoutes(),
      home: selectHomeScreen(),
    );
  }
}
