import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/text_style.dart';

class VisaCard extends StatelessWidget {
  const VisaCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: const DecorationImage(
          image: AssetImage('assets/images/visa_mask.png'),
        ),
      ),
      width: MediaQuery.of(context).size.width * 0.8,
      height: 185,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Mrh Raju',
                style: AppTextStyles.text15.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              Image.asset(
                'assets/images/visa_text.png',
                width: 30,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Visa Classic',
                style: AppTextStyles.text13.copyWith(
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                '5254 **** **** 7690',
                style: AppTextStyles.text15.copyWith(
                  color: Colors.white,
                  letterSpacing: 4.8
                ),
              ),
              const SizedBox(height: 15.0),
              Text(
                '\$3,763.87',
                style: AppTextStyles.text15.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
