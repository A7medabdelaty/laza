import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/colors.dart';
import 'package:laza/core/utils/styles/text_style.dart';
import 'package:laza/services/auth/get_started/presentation/views/get_started_view.dart';

import 'custom_button.dart';

class OnBoardingCard extends StatefulWidget {
  const OnBoardingCard({super.key});

  @override
  State<OnBoardingCard> createState() => _OnBoardingCardState();
}

class _OnBoardingCardState extends State<OnBoardingCard> {
  List<bool> buttonsValue = [true, false];

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Look Good, Feel Good',
              style: AppTextStyles.text25,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Create your individual & unique style and look amazing everyday.',
              style: AppTextStyles.text15,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        buttonsValue = [true, false];
                      });
                    },
                    child: CustomButton(
                      text: 'Man',
                      isSelected: buttonsValue[0],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        buttonsValue = [false, true];
                      });
                    },
                    child: CustomButton(
                      text: 'Woman',
                      isSelected: buttonsValue[1],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: btnOnPressed,
              child: Text(
                'Skip',
                style:
                    AppTextStyles.text17.copyWith(color: AppColors.textLight),
              ),
            )
          ],
        ),
      ),
    );
  }

  void btnOnPressed() {
    Navigator.pushNamed(context, GetStartedView.routeName);
  }
}
