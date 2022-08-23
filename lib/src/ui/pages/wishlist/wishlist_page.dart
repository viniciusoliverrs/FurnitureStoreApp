import 'package:flutter/material.dart';
import 'package:furniture_store_app/src/core/config/app_data.dart';

import '../../../data/models/product_model.dart';
import '../../common/common_appbar.dart';
import 'components/wishlist_bottom_nav_bar.dart';
import 'components/wishlist_item.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: CommonAppBar(
          title: 'Wishlist',
          showBackButton: false,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 1 / 1,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemCount: AppData.products.length,
              itemBuilder: (BuildContext ctx, index) {
                return WishlistItem(AppData.products[index]);
              }),
        ),
        bottomNavigationBar: const WishlistBottomNavigationBar(),
      ),
    );
  }
}
