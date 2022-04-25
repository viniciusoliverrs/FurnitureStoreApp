import 'package:flutter/material.dart';

import 'core/app_routes.dart';
import 'pages/wishlist_page.dart';

void main() {
  runApp(const MaterialApp(
    initialRoute: "/wishlist",
    onGenerateRoute: AppRoutes.generateRoute,
    debugShowCheckedModeBanner: false,
    home: WishlistPage(),
  ));
}
