import 'package:flutter/material.dart';

import '../../../../data/models/product_model.dart';
import '../../../common/common_circle_icon_button.dart';
import '../../../theme/app_color.dart';
import '../../../theme/app_size.dart';
import '../../shopping_cart/shopping_cart_page.dart';

class WishlistItem extends StatelessWidget {
  ProductModel product;
  WishlistItem(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      elevation: 1,
      color: AppColor.primary,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(product.imagePath),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: Text(product.title),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$ ${product.price}"),
                CommonCircleIconButton(
                  icon: Icons.add,
                  onpressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ShoppingCartPage()));
                  },
                  buttonHeight: 20,
                  buttonWidth: 20,
                  iconSize: AppSize.iconSizeSmall,
                  buttonColor: AppColor.red,
                  iconColor: AppColor.background,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
