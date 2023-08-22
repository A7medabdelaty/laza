import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/colors.dart';

class AppBarCustomWidget extends StatelessWidget {
  const AppBarCustomWidget({super.key, required this.icon, this.iconAction});

  final Widget icon;
  final void Function()? iconAction;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.9,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: AppColors.backgroundLight,
        ),
        child: icon,
      ),
    );
  }
}
