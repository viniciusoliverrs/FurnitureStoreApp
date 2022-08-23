import 'package:flutter/material.dart';

import '../theme/app_color.dart';
import '../theme/app_size.dart';
import 'common_icon_button.dart';

class CommonQuantity extends StatelessWidget {
  int quantity;
  VoidCallback increment;
  VoidCallback decrement;
  CommonQuantity({
    Key? key,
    required this.quantity,
    required this.increment,
    required this.decrement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButtonWidget(
            icon: Icons.remove,
            onpressed: increment,
            iconColor: AppColor.background,
            buttonColor: AppColor.red),
        const SizedBox(width: 10),
        Text('$quantity'),
        const SizedBox(width: 10),
        IconButtonWidget(
          icon: Icons.add,
          onpressed: increment,
          iconColor: AppColor.background,
          buttonColor: AppColor.red,
          iconSize: AppSize.iconSizeSmall,
        ),
      ],
    );
  }
}
