import 'package:flutter/material.dart';

import 'circle_icon_button_widget.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  String title;
  @override
  final Size preferredSize;
  AppBarWidget({Key? key, required this.title})
      : preferredSize = Size.fromHeight(AppBar().preferredSize.height),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).padding,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CircleIconButtonWidget(
              icon: Icons.arrow_back,
              onpressed: () {
                Navigator.pop(context);
              }),
          Text(title),
          CircleIconButtonWidget(
              icon: Icons.notifications_off, onpressed: () {})
        ]),
      ),
    );
  }
}
