import 'package:flutter/material.dart';

import '../../../data/models/product_model.dart';
import '../../common/common_appbar.dart';
import '../../common/common_button.dart';
import '../../common/common_cart_item.dart';
import '../../theme/app_color.dart';

class ShoppingCartPage extends StatefulWidget {
  const ShoppingCartPage({Key? key}) : super(key: key);

  @override
  State<ShoppingCartPage> createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
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
        appBar: CommonAppBar(title: 'Cart'),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _list.length,
                itemBuilder: (context, index) {
                  return CommonCartItem(
                    product: _list[index],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text("Total \$ $_total"),
            ),
            CommonButton(
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
