import 'package:flutter/material.dart';

import 'src/core/routes/approutes.dart';


class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: AppRoutes.wishlist,
      onGenerateRoute: AppRoutes.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
