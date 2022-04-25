import 'package:flutter/material.dart';
import 'package:furniture_store_app/theme/app_size.dart';

import '../theme/app_color.dart';

class CircleIconButtonWidget extends StatelessWidget {
  IconData icon;
  VoidCallback onpressed;
  double buttonWidth;
  double buttonHeight;
  Color buttonColor;
  Color iconColor;
  double iconSize;
  CircleIconButtonWidget({
    Key? key,
    required this.icon,
    required this.onpressed,
    this.buttonWidth = 50,
    this.buttonHeight = 50,
    this.buttonColor = AppColor.primary,
    this.iconColor = AppColor.secondary,
    this.iconSize = AppSize.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: buttonColor,
      shape: const CircleBorder(),
      child: SizedBox(
        height: buttonHeight,
        width: buttonWidth,
        child: InkWell(
          borderRadius: BorderRadius.circular(buttonWidth),
          child: Icon(
            icon,
            size: iconSize,
            color: iconColor,
          ),
          onTap: onpressed,
        ),
      ),
    );
  }
}
