import 'package:flutter/material.dart';

import 'confirmation_code_item.dart';

class ConfirmationCodeRow extends StatelessWidget {
  const ConfirmationCodeRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ConfirmationCodeItem(),
        SizedBox(
          width: 10,
        ),
        ConfirmationCodeItem(),
        SizedBox(
          width: 10,
        ),
        ConfirmationCodeItem(),
        SizedBox(
          width: 10,
        ),
        ConfirmationCodeItem(),
      ],
    );
  }
}
