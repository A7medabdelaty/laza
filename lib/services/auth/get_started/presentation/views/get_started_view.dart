import 'package:flutter/material.dart';
import 'package:laza/services/auth/get_started/presentation/views/widgets/custom_app_bar.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  static const String routeName = 'route';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            GetStartedAppBar(),
          ],
        ),
      ),
    );
  }
}
