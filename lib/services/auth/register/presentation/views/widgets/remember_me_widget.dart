import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/text_style.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RememberMeWidget extends StatefulWidget {
  const RememberMeWidget({super.key});

  @override
  State<RememberMeWidget> createState() => _RememberMeWidgetState();
}

class _RememberMeWidgetState extends State<RememberMeWidget> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Remember me',
          style: AppTextStyles.text13,
        ),
        const Spacer(),
        Transform.scale(
          scale: 0.7,
          child: Switch(
            value: isActive,
            onChanged: (value) async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.setBool('remember me', value);
              setState(() {
                isActive = value;
              });
            },
            activeColor: Colors.white,
            activeTrackColor: const Color(0xff34C759),
          ),
        ),
      ],
    );
  }
}
