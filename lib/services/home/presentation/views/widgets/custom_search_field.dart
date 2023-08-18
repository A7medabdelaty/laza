import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:laza/core/utils/styles/colors.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {},
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
        hintText: 'Search',
        hintStyle: const TextStyle(color: AppColors.textLight),
        fillColor: AppColors.backgroundLight,
        filled: true,
        prefixIcon: const Icon(
          FontAwesomeIcons.magnifyingGlass,
          color: AppColors.textLight,
        ),
      ),
    );
  }
}
