import 'dart:ui';
import 'dart:math' as math;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:laza/core/utils/services/local/cache_helper.dart';
import 'package:laza/core/utils/styles/colors.dart';
import 'package:laza/core/utils/styles/text_style.dart';
import 'package:laza/core/utils/widgets/app_bar_custom_widget.dart';
import 'package:laza/core/utils/widgets/custom_switch_widget.dart';
import 'package:laza/services/auth/get_started/presentation/views/get_started_view.dart';
import 'package:laza/services/home/presentation/views/widgets/drawer_customer_info.dart';
import 'package:laza/services/home/presentation/views/widgets/drawer_side_menu_item.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 5.0,
              sigmaY: 5.0,
            ),
            child: const SizedBox.expand(),
          ),
          Drawer(
            surfaceTintColor: Colors.white,
            width: MediaQuery.of(context).size.width * 0.85,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 30.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Transform.rotate(
                    angle: -math.pi / 2.0,
                    child: AppBarCustomWidget(
                      icon: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const ImageIcon(
                          AssetImage('assets/images/menu.png'),
                          size: 20.0,
                          color: AppColors.darkBlack,
                        ),
                      ),
                    ),
                  ),
                  const DrawerCustomerInfo(),
                  const CustomSwitchWidget(
                    text: 'Dark Mode',
                    leadingWidget: Row(
                      children: [
                        Icon(
                          Icons.wb_sunny_outlined,
                        ),
                        SizedBox(width: 5.0),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  const DrawerSideMenuItem(
                      icon: Icons.info_outline, text: 'Account Info'),
                  const DrawerSideMenuItem(
                      icon: Icons.lock_outline, text: 'Password'),
                  const DrawerSideMenuItem(
                      icon: Icons.shopping_bag_outlined, text: 'Orders'),
                  const DrawerSideMenuItem(
                      icon: Icons.wallet_outlined, text: 'My Cards'),
                  const DrawerSideMenuItem(
                      icon: FontAwesomeIcons.heart, text: 'Wishlist'),
                  const DrawerSideMenuItem(
                      icon: Icons.settings_outlined, text: 'Settings'),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      FirebaseAuth.instance.signOut();
                      CacheHelper.putData(key: 'remember me', value: false);
                      Navigator.pushReplacementNamed(
                        context,
                        GetStartedView.routeName,
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 10.0,
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.logout_outlined,
                            color: AppColors.red,
                          ),
                          const SizedBox(width: 10.0),
                          Text(
                            'Logout',
                            style: AppTextStyles.text15
                                .copyWith(color: AppColors.red),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
