import 'package:flutter/material.dart';

import '../../data/models/product_model.dart';
import '../theme/app_color.dart';
import '../theme/app_size.dart';
import 'common_circle_icon_button.dart';
import 'common_quantity.dart';

class CommonCartItem extends StatelessWidget {
  ProductModel product;
  CommonCartItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColor.primary,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(product.imagePath),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(product.title),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("\$ ${product.price}"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonQuantity(
                        decrement: () {},
                        quantity: 1,
                        increment: () {},
                      ),
                      CommonCircleIconButton(
                        icon: Icons.delete_outline,
                        onpressed: () {},
                        iconColor: AppColor.red,
                        buttonColor: AppColor.background,
                        iconSize: AppSize.iconSizeSmall,
                        buttonHeight: 30,
                        buttonWidth: 30,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
