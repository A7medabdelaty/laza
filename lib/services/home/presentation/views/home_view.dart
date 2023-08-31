import 'package:flutter/material.dart';
import 'package:laza/core/utils/styles/colors.dart';
import 'package:laza/core/utils/widgets/app_bar_custom_widget.dart';
import 'package:laza/core/utils/widgets/custom_app_bar.dart';
import 'package:laza/core/utils/widgets/hint_text.dart';
import 'package:laza/core/utils/widgets/title_text.dart';
import 'package:laza/services/cart/presentation/views/cart_view.dart';
import 'package:laza/services/home/presentation/views/app_drawer.dart';
import 'package:laza/services/home/presentation/views/widgets/brands_list.dart';
import 'package:laza/services/home/presentation/views/widgets/search_row.dart';

import 'widgets/new_arrival_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const String routeName = 'home view';

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> key = GlobalKey();
    return Scaffold(
      key: key,
      drawer: const AppDrawer(),
      appBar: CustomAppBar(
        leadingWidget: IconButton(
          onPressed: () {
            key.currentState!.openDrawer();
          },
          icon: const ImageIcon(
            AssetImage('assets/images/menu.png'),
            size: 25.0,
            color: AppColors.darkBlack,
          ),
        ),
        actions: [
          AppBarCustomWidget(
            icon: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, CartView.routeName);
              },
              icon: const ImageIcon(
                AssetImage('assets/images/bag.png'),
                size: 25.0,
                color: AppColors.darkBlack,
              ),
            ),
          ),
        ],
      ),
      body: const CustomScrollView(
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
          ),
          SliverToBoxAdapter(
            child: NewArrivalList(),
          )
        ],
      ),
    );
  }
}
