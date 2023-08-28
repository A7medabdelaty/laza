import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:laza/core/utils/styles/colors.dart';
import 'package:laza/core/utils/styles/text_style.dart';

class CartItem extends StatefulWidget {
  const CartItem({super.key});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: AppColors.backgroundLight,
            ),
            child: Image.asset(
              'assets/images/cart_1.png',
              width: 100,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(width: 15.0),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.51,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Men\'s Tie-Dye T-Shirt Nike Sportswear',
                  style: AppTextStyles.text13,
                  maxLines: 2,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 10.0),
                Text(
                  '\$45 (-\$4.00 Tax)',
                  style: AppTextStyles.text11.copyWith(
                    color: AppColors.textLight,
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            count++;
                          });
                        },
                        icon: const Icon(
                          Icons.keyboard_arrow_up_rounded,
                          size: 15,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15.0),
                    Text(
                      '$count',
                      style: AppTextStyles.text13,
                    ),
                    const SizedBox(width: 15.0),
                    CircleAvatar(
                      radius: 15,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            count != 0 ? count-- : count;
                          });
                        },
                        icon: const Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: 15,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        color: AppColors.backgroundLight,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        highlightColor: AppColors.primaryColor,
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.trash,
                          size: 15,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
