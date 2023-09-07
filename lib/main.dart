import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:laza/core/firebase_service.dart';
import 'package:laza/core/utils/app_routes.dart';
import 'package:laza/core/utils/styles/theme.dart';
import 'package:laza/services/layout.dart';


void main() {
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
      home: const AppLayout(),
    );
  }
}
