import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DownwordScroller extends StatelessWidget {
  const DownwordScroller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:40.0),
      child: IconButton(onPressed: () {}, icon: Icon(Iconsax.arrow_down_1)),
    );
  }
}
