import 'package:flutter/material.dart';

import 'visa_card.dart';

class CardsList extends StatelessWidget {
  const CardsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: ListView.separated(
        itemBuilder: (context, index) => const VisaCard(),
        separatorBuilder: (context, index) => const SizedBox(width: 5.0),
        itemCount: 15,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
