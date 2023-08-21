import 'package:flutter/cupertino.dart';
import 'package:laza/core/utils/styles/text_style.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Description',
            style: AppTextStyles.text17.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10.0),
          const Text(
            'The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel with Read More..',
            style: AppTextStyles.text15,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
