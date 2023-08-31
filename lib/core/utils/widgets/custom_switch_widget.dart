import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/colors.dart';

import '../styles/text_style.dart';

class CustomSwitchWidget extends StatefulWidget {
  const CustomSwitchWidget({super.key, required this.text, this.leadingWidget = const SizedBox()});

  final Widget leadingWidget;
  final String text;

  @override
  State<CustomSwitchWidget> createState() => _CustomSwitchWidgetState();
}

class _CustomSwitchWidgetState extends State<CustomSwitchWidget> {
  bool isActive = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        widget.leadingWidget,
        Text(
          widget.text,
          style: AppTextStyles.text15.copyWith(
            fontWeight: FontWeight.w500,
            color: AppColors.darkBlack,
          ),
        ),
        const Spacer(),
        Transform.scale(
          scale: 0.7,
          child: Switch(
            value: isActive,
            onChanged: (value) {
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
