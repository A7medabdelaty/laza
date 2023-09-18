import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/text_style.dart';
import 'package:laza/core/utils/widgets/hint_text.dart';
import 'package:laza/services/home/presentation/views/all_products_view.dart';

class NewArrivalInkwell extends StatelessWidget {
  const NewArrivalInkwell({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AllProductsView.routeName);
      },
      child: const Row(
        children: [
          Text(
            'New Arrival',
            style: AppTextStyles.text17,
          ),
          Spacer(),
          HintText(text: 'view all'),
        ],
      ),
    );
  }
}
