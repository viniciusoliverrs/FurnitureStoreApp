import 'package:flutter/material.dart';

class ButtonLargeWidget extends StatelessWidget {
  String text;
  Color colorButton;
  EdgeInsetsGeometry padding;
  VoidCallback? onPressed;
  double width;
  double height;
  ButtonLargeWidget({
    required this.text,
    required this.colorButton,
    required this.padding,
    required this.onPressed,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
        style: ElevatedButton.styleFrom(
          primary: colorButton,
        ),
      ),
    );
  }
}
