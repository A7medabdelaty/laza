import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/colors.dart';

import '../styles/text_style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.titleText,
    required this.leadingWidget,
    this.actions,
  });

  final String? titleText;
  final Widget leadingWidget;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        leading: Transform.scale(
          scale: 0.8,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: AppColors.backgroundLight,
            ),
            child: leadingWidget,
          ),
        ),
        title: Text(
          titleText ?? '',
          style: AppTextStyles.text17.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
