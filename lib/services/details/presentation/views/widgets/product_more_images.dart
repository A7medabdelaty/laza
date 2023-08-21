import 'package:flutter/cupertino.dart';

class ProductMoreImages extends StatelessWidget {
  const ProductMoreImages({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'product_1_img1',
      'product_1_img2',
      'product_1_img3',
      'product_1_img4',
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: images
            .map(
              (e) => Image.asset(
                'assets/images/$e.png',
                height: 77,
                width: 77,
              ),
            )
            .toList(),
      ),
    );
  }
}
