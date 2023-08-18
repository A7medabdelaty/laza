import 'package:flutter/material.dart';
import 'package:laza/core/utils/widgets/hint_text.dart';
import 'package:laza/core/utils/widgets/title_text.dart';
import 'package:laza/services/home/presentation/views/widgets/brands_list.dart';
import 'package:laza/services/home/presentation/views/widgets/home_app_bar.dart';
import 'package:laza/services/home/presentation/views/widgets/search_row.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const String routeName = 'home view';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeCustomAppBar(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleText(text: 'Hello'),
                  SizedBox(height: 5.0),
                  HintText(text: 'Welcome to Laza.'),
                  SizedBox(height: 20.0),
                  SearchRow(),
                  SizedBox(height: 20.0),
                  SizedBox(
                    height: 90.0,
                    child: BrandsList(),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
