import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:laza/core/utils/styles/colors.dart';
import 'package:laza/core/utils/widgets/cart_icon.dart';
import 'package:laza/core/utils/widgets/custom_app_bar.dart';
import 'package:laza/core/utils/widgets/menu_icon.dart';
import 'package:laza/services/account_info/payment/presentation/views/payment_view.dart';
import 'package:laza/services/cart/presentation/views/cart_view.dart';
import 'package:laza/services/home/presentation/views/app_drawer.dart';
import 'package:laza/services/home/presentation/views/home_view.dart';
import 'package:laza/services/wishlist/presentation/views/wish_list_view.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({super.key});

  static const String routeName = 'app layout';

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> key = GlobalKey();
    List<Widget> screens = [
      const HomeView(),
      const WishlistView(),
      const CartView(),
      const PaymentView(),
    ];

    List<String> titles = ['Home', 'Wishlist', 'Cart', 'Payment'];

    return Scaffold(
      key: key,
      drawer: const AppDrawer(),
      appBar: CustomAppBar(
        leadingWidget: MenuIcon(scaffoldKey: key),
        titleText: titles[currentIndex],
        actions: const [
          CartIcon(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.house),
            label: 'Home',
            activeIcon: Text(
              'Home',
              style: TextStyle(
                color: AppColors.primaryColor,
              ),
            ),
            backgroundColor: AppColors.primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.solidHeart),
            label: 'Wishlist',
            activeIcon: Text(
              'Wishlist',
              style: TextStyle(
                color: AppColors.primaryColor,
              ),
            ),
            backgroundColor: AppColors.primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.bagShopping),
            label: 'Cart',
            activeIcon: Text(
              'Cart',
              style: TextStyle(
                color: AppColors.primaryColor,
              ),
            ),
            backgroundColor: AppColors.primaryColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.solidCreditCard),
            label: 'Payment',
            activeIcon: Text(
              'Payment',
              style: TextStyle(
                color: AppColors.primaryColor,
              ),
            ),
            backgroundColor: AppColors.primaryColor,
          ),
        ],
        selectedIconTheme: const IconThemeData(color: AppColors.primaryColor),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: AppColors.textLight,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
      ),
      body: screens[currentIndex],
    );
  }
}
