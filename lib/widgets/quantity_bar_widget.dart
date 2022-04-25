import 'package:flutter/material.dart';
import 'package:furniture_store_app/theme/app_color.dart';
import 'package:furniture_store_app/widgets/icon_button_widget.dart';

import '../theme/app_size.dart';

class QuantityBarWidget extends StatelessWidget {
  int quantity;
  VoidCallback increment;
  VoidCallback decrement;
  QuantityBarWidget({
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
