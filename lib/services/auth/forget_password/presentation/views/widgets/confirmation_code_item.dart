import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:laza/core/utils/styles/text_style.dart';

class ConfirmationCodeItem extends StatelessWidget {
  const ConfirmationCodeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        textAlign: TextAlign.center,
        maxLength: 1,
        style: AppTextStyles.text22,
        maxLengthEnforcement: MaxLengthEnforcement.enforced,
        decoration: const InputDecoration(
          counterText: '',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
