import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/colors.dart';
import 'package:laza/core/utils/styles/text_style.dart';

class AuthCustomTextFormField extends StatefulWidget {
  const AuthCustomTextFormField({
    super.key,
    required this.controller,
    required this.label,
    this.passwordField = false,
  });

  final TextEditingController controller;
  final String label;
  final bool passwordField;

  @override
  State<AuthCustomTextFormField> createState() =>
      _AuthCustomTextFormFieldState();
}

class _AuthCustomTextFormFieldState extends State<AuthCustomTextFormField> {
  Widget? suffixIcon = const Icon(Icons.visibility);
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '${widget.label} cannot be empty';
        } else {
          return null;
        }
      },
      controller: widget.controller,
      obscureText: widget.passwordField ? obscureText : false,
      decoration: InputDecoration(
        suffixIcon: widget.passwordField
            ? IconButton(
                onPressed: () {
                  setState(() {
                    obscureText = !obscureText;
                    if (obscureText) {
                      suffixIcon = const Icon(Icons.visibility);
                    } else {
                      suffixIcon = const Icon(Icons.visibility_off);
                    }
                  });
                },
                icon: suffixIcon!,
              )
            : null,
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.darkBlack),
        ),
        label: Text(widget.label),
        fillColor: AppColors.darkBlack,
        focusColor: AppColors.darkBlack,
        hoverColor: AppColors.darkBlack,
      ),
      cursorColor: AppColors.darkBlack,
      style: AppTextStyles.text15.copyWith(
        color: AppColors.darkBlack,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
