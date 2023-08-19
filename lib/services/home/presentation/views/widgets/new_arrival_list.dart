import 'package:flutter/cupertino.dart';
import 'package:laza/core/utils/styles/text_style.dart';
import 'package:laza/core/utils/widgets/hint_text.dart';
import 'package:laza/services/home/data/product_model.dart';
import 'package:laza/services/home/presentation/views/widgets/new_arrival_item.dart';

class NewArrivalList extends StatelessWidget {
  const NewArrivalList({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProductModel> products = [
      ProductModel('product_1', 'Nike Sportswear Club Fleece', 99.0),
      ProductModel('product_2', 'Trail Running Jacket Nike Windrunner', 99.0),
      ProductModel('product_3', 'Training Top Nike Sport Clash', 99.0),
      ProductModel('product_4', 'Trail Running Jacket Nike Windrunner', 99.0),
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      child: Column(
        children: [
          const Row(
            children: [
              Text(
                'New Arrival',
                style: AppTextStyles.text17,
              ),
              Spacer(),
              HintText(text: 'view all'),
            ],
          ),
          const SizedBox(height: 15.0),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 260,
              crossAxisSpacing: 15.0,
              mainAxisSpacing: 15.0,
            ),
            itemBuilder: (context, index) =>
                NewArrivalItem(product: products[index]),
            itemCount: products.length,
          ),
        ],
      ),
    );
  }
}
