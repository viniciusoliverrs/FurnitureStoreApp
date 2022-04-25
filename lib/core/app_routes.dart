import 'package:flutter/material.dart';

import '../pages/cart_page.dart';
import '../pages/checkout_page.dart';
import '../pages/error_page.dart';
import '../pages/wishlist_page.dart';

class AppRoutes {
  static String wishlist = '/wishlist';
  static String cart = '/cart';
  static String checkout = '/checkout';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case "/wishlist":
        return MaterialPageRoute(builder: (context) => const WishlistPage());
      case "/cart":
        return MaterialPageRoute(builder: (context) => const CartPage());
      case "/checkout":
        return MaterialPageRoute(builder: (context) => const CheckoutPage());
      default:
        return MaterialPageRoute(builder: (context) => const ErrorPage());
    }
  }
}
