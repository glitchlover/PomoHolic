import 'package:flutter/material.dart';

import '../Themes/myColors.dart';
import 'myContainer.dart';

class MyIconButton extends IconButton {
  MyIconButton(
      {required VoidCallback? onPressed,
      required Widget icon,
      Color color = MyColors.green})
      : super(onPressed: onPressed, icon: icon);
  IconButton paint({double? size}) {
    return IconButton(
      icon: icon,
      onPressed: onPressed,
      iconSize: size,
      splashRadius: 20.0,
      splashColor: MyColors.shadowColor,
      // color: color,
    );
  }

  Widget cicle([double size = 20, color = MyColors.shadowColor]) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: color,
      ),
      child: IconButton(
        icon: icon,
        onPressed: onPressed,
        iconSize: size,
        splashRadius: 20.0,
        splashColor: MyColors.shadowColor,
        // color: color!.withOpacity(1)
      ),
    );
  }

  Widget clicky({double size = 20, Color? color}) {
    return MyContainer(
      height: 40,
      width: 40,
      color: color ?? Color.fromARGB(255, 203, 65, 55),
      child: IconButton(
        icon: icon,
        onPressed: onPressed,
        iconSize: size,
        splashRadius: 20.0,
        splashColor: MyColors.shadowColor,
        // color: color!.withOpacity(1)
      ),
    );
  }
}
