import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

class ProductMoreImages extends StatelessWidget {
  const ProductMoreImages({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: images.map(
          (e) {
            return Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: CachedNetworkImage(
                    imageUrl: e,
                  ),
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
