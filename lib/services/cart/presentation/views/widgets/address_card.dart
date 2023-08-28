import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:laza/core/utils/styles/colors.dart';
import 'package:laza/core/utils/styles/text_style.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Delivery Address',
                style: AppTextStyles.text17,
              ),
              SizedBox(
                width: 15,
                height: 15,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.chevronRight,
                    size: 15,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 15.0),
          Row(
            children: [
              Image.asset(
                'assets/images/location.png',
                width: 50,
                height: 50,
              ),
              const SizedBox(width: 15.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Chhatak, Sunamgonj 12/8AB',
                    style: AppTextStyles.text15.copyWith(
                      color: AppColors.darkBlack,
                    ),
                  ),
                  Text(
                    'Sylhet',
                    style: AppTextStyles.text13.copyWith(
                      color: AppColors.textLight,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  color: const Color(0xff4AC76D),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: const Icon(
                  FontAwesomeIcons.check,
                  color: Colors.white,
                  size: 15.0,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
