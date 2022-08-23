import 'package:flutter/material.dart';

import 'common_circle_icon_button.dart';

class CommonAppBar extends StatelessWidget with PreferredSizeWidget {
  String title;
  bool showBackButton;
  @override
  final Size preferredSize;
  CommonAppBar({Key? key, required this.title, this.showBackButton = true})
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
          showBackButton
              ? CommonCircleIconButton(
                  icon: Icons.arrow_back,
                  onpressed: () {
                    Navigator.pop(context);
                  })
              : Container(),
          Text(title),
          CommonCircleIconButton(
              icon: Icons.notifications_off, onpressed: () {})
        ]),
      ),
    );
  }
}
