import 'package:flutter/cupertino.dart';
import 'package:laza/core/utils/styles/text_style.dart';
import 'package:laza/core/utils/widgets/hint_text.dart';
import 'package:laza/services/home/presentation/views/widgets/brand_item.dart';

class BrandsList extends StatelessWidget {
  const BrandsList({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> brands = ['adidas','nike','fila','puma'];
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Row(
          children: [
            Text(
              'Choose Brand',
              style: AppTextStyles.text17,
            ),
            Spacer(),
            HintText(text: 'view all'),
          ],
        ),
        const SizedBox(height: 15.0),
        Expanded(
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => BrandItem(brand: brands[index]),
            separatorBuilder: (context, index) => const SizedBox(width: 10.0),
            itemCount: brands.length,
          ),
        ),
      ],
    );
  }
}
