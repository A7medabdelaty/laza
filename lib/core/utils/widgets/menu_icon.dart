import 'package:flutter/material.dart';

import '../styles/colors.dart';

class MenuIcon extends StatelessWidget {
  const MenuIcon({
    super.key,
    required this.scaffoldKey,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        scaffoldKey.currentState!.openDrawer();
      },
      icon: const ImageIcon(
        AssetImage('assets/images/menu.png'),
        size: 25.0,
        color: AppColors.darkBlack,
      ),
    );
  }
}
