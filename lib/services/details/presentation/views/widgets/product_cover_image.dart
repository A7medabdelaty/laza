import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProductCoverImage extends StatelessWidget {
  const ProductCoverImage({super.key, required this.coverImg});

  final String coverImg;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 375 / 418,
      child: CachedNetworkImage(
        fit: BoxFit.fill,
        imageUrl: coverImg,
      ),
    );
  }
}
