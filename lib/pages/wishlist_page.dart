import 'package:flutter/material.dart';

import '../model/product_model.dart';
import '../theme/app_color.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/wishlist_item_widget.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  final List<ProductModel> _list = [
    ProductModel(
      title: 'Cadeira 1',
      imagePath: 'assets/images/chair1.jpg',
      price: 200.0,
    ),
    ProductModel(
      title: 'Cadeira 2',
      imagePath: 'assets/images/chair2.jpg',
      price: 300.0,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: AppBarWidget(title: 'Wishlist'),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 1 / 1,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemCount: _list.length,
              itemBuilder: (BuildContext ctx, index) {
                return WishlistItemWidget(product: _list[index]);
              }),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          selectedItemColor: AppColor.red,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Wishlist"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
