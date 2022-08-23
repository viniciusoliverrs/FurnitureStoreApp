import 'package:flutter/material.dart';

import '../theme/app_color.dart';
import '../theme/app_size.dart';

class IconButtonWidget extends StatelessWidget {
  IconData icon;
  VoidCallback onpressed;
  double buttonWidth;
  double buttonHeight;
  Color buttonColor;
  Color iconColor;
  double iconSize;
  IconButtonWidget({
    Key? key,
    required this.icon,
    required this.onpressed,
    this.buttonWidth = 20,
    this.buttonHeight = 20,
    this.buttonColor = AppColor.primary,
    this.iconColor = AppColor.secondary,
    this.iconSize = AppSize.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: buttonColor,
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
