import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/text_style.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: AppTextStyles.text28,
      ),
    );
  }
}
