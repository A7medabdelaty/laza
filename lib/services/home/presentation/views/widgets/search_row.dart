import 'package:flutter/material.dart';
import 'package:laza/services/home/presentation/views/widgets/custom_search_button.dart';
import 'package:laza/services/home/presentation/views/widgets/custom_search_field.dart';

class SearchRow extends StatelessWidget {
  const SearchRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 50.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: CustomSearchField(),
          ),
          SizedBox(
            width: 10.0,
          ),
          CustomVoiceSearchButton(),
        ],
      ),
    );
  }
}
