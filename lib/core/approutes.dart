import 'package:flutter/material.dart';

import '../pages/shopping_cart/shopping_cart_page.dart';
import '../pages/checkout/checkout_page.dart';
import '../pages/error_page.dart';
import '../pages/wishlist/wishlist_page.dart';

class AppRoutes {
  static const  String wishlist = '/wishlist';
  static const String shoppingCart = '/shopping_cart';
  static const String checkout = '/checkout';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case wishlist:
        return MaterialPageRoute(builder: (context) => const WishlistPage());
      case shoppingCart:
        return MaterialPageRoute(builder: (context) => const CartPage());
      case checkout:
        return MaterialPageRoute(builder: (context) => const CheckoutPage());
      default:
        return MaterialPageRoute(builder: (context) => const ErrorPage());
    }
  }
}
