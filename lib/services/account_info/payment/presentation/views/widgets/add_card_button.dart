import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:laza/core/utils/styles/colors.dart';
import 'package:laza/core/utils/styles/text_style.dart';

class AddCardButton extends StatelessWidget {
  const AddCardButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: const Color(0xffF5F2FF),
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      onPressed: () {},
      shape: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          borderSide: BorderSide(color: AppColors.primaryColor)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            FontAwesomeIcons.squarePlus,
            color: AppColors.primaryColor,
          ),
          const SizedBox(width: 5.0),
          Text(
            'Add new card',
            style: AppTextStyles.text17.copyWith(
              color: AppColors.primaryColor,
            ),
          )
        ],
      ),
    );
  }
}
