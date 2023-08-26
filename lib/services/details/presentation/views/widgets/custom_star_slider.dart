import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/colors.dart';
import 'package:laza/core/utils/styles/text_style.dart';

class CustomStarSlider extends StatefulWidget {
  const CustomStarSlider({super.key});

  @override
  State<CustomStarSlider> createState() => _CustomStarSliderState();
}

class _CustomStarSliderState extends State<CustomStarSlider> {
  double sliderValue = 2.5;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Star',
          style: AppTextStyles.text17,
        ),
        Row(
          children: [
            const Text(
              '0.0',
              style: AppTextStyles.text11,
            ),
            Expanded(
              child: SliderTheme(
                data: const SliderThemeData(
                  tickMarkShape: RoundSliderTickMarkShape(tickMarkRadius: 0.0),
                  trackHeight: 5.0,
                ),
                child: Slider(
                  value: sliderValue,
                  onChanged: (value) {
                    setState(() {
                      sliderValue = value;
                    });
                  },
                  divisions: 10,
                  label: sliderValue.toString(),
                  activeColor: AppColors.primaryColor,
                  inactiveColor: AppColors.backgroundLight,
                  min: 0.0,
                  max: 5.0,
                ),
              ),
            ),
            const Text(
              '5.0',
              style: AppTextStyles.text11,
            ),
          ],
        ),
      ],
    );
  }
}
