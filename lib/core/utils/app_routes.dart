import 'package:flutter/material.dart';
import 'package:laza/services/account_info/address/presentation/views/address_view.dart';
import 'package:laza/services/account_info/payment/presentation/views/new_card_view.dart';
import 'package:laza/services/account_info/payment/presentation/views/payment_view.dart';
import 'package:laza/services/auth/forget_password/presentation/views/forget_password_view.dart';
import 'package:laza/services/auth/get_started/presentation/views/get_started_view.dart';
import 'package:laza/services/auth/login/presentation/views/login_view.dart';
import 'package:laza/services/auth/register/presentation/views/register_view.dart';
import 'package:laza/services/cart/presentation/views/cart_view.dart';
import 'package:laza/services/cart/presentation/views/order_confirmed_view.dart';
import 'package:laza/services/details/presentation/views/add_review_view.dart';
import 'package:laza/services/details/presentation/views/product_details_view.dart';
import 'package:laza/services/details/presentation/views/product_reviews_view.dart';
import 'package:laza/services/home/presentation/views/all_products_view.dart';
import 'package:laza/services/home/presentation/views/home_view.dart';
import 'package:laza/services/layout.dart';
import 'package:laza/services/on_boarding/presentation/views/on_boarding_view.dart';
class AppRouter{
  static Map<String, Widget Function(BuildContext)> appRoutes() {
    return {
      OnBoardingView.routeName: (context) => const OnBoardingView(),
      AppLayout.routeName: (context) => const AppLayout(),
      HomeView.routeName: (context) => const HomeView(),
      GetStartedView.routeName: (context) => const GetStartedView(),
      RegisterView.routeName: (context) => const RegisterView(),
      LoginView.routeName: (context) => const LoginView(),
      ForgetPasswordView.routeName: (context) => ForgetPasswordView(),
      ProductDetailsView.routeName: (context) => const ProductDetailsView(),
      ProductReviewsView.routeName: (context) => const ProductReviewsView(),
      AddReviewView.routeName: (context) => const AddReviewView(),
      CartView.routeName: (context) => const CartView(),
      AddressView.routeName: (context) => AddressView(),
      PaymentView.routeName: (context) => const PaymentView(),
      NewCardView.routeName: (context) => const NewCardView(),
      OrderConfirmedView.routeName: (context) => const OrderConfirmedView(),
      NewArrivalView.routeName: (context) => const NewArrivalView(),
    };
  }
}

