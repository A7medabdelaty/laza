import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/text_style.dart';
import 'package:laza/services/auth/get_started/data/models/social_media_model.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({super.key, required this.model});

  final SocialMediaModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 20.0,
      ),
      child: Container(
        padding: const EdgeInsets.all(14.0),
        decoration: BoxDecoration(
          color: model.color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              model.icon,
              color: Colors.white,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              model.txt,
              style: AppTextStyles.text17.copyWith(
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}