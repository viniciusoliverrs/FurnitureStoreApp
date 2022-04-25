import 'package:flutter/material.dart';
import 'package:furniture_store_app/theme/app_color.dart';
import 'package:furniture_store_app/widgets/cart_item_widget.dart';

import '../model/product_model.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/button_large_widget.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  double _total = 0;
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
  void initState() {
    super.initState();
    for (var e in _list) {
      _total += e.price;
    }
    setState(() => _total = _total);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: AppBarWidget(title: 'Cart'),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _list.length,
                itemBuilder: (context, index) {
                  return CartItemWidget(
                    product: _list[index],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text("Total \$ $_total"),
            ),
            ButtonLargeWidget(
              text: 'Payment',
              colorButton: AppColor.buttonPrimary,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              onPressed: () {
                Navigator.pushNamed(context, '/checkout');
              },
              height: 60,
              width: double.infinity,
            )
          ],
        ),
      ),
    );
  }
}
