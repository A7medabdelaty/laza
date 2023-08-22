import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../styles/colors.dart';

class ArrowBackIcon extends StatelessWidget {
  const ArrowBackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        FontAwesomeIcons.arrowLeft,
        color: AppColors.darkBlack,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
