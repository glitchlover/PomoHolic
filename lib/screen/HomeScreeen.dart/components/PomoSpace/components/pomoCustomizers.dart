import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pomotica/Themes/myColors.dart';
import 'package:pomotica/comingSoonScreen.dart';
import 'package:pomotica/screen/HomeScreeen.dart/components/PomoSpace/pomoSpace.dart';
import 'package:pomotica/screen/HomeScreeen.dart/components/pomoTasksOrderInput/pomoTasksOrderInput.dart';
import 'package:pomotica/screen/recordScreen.dart';
import 'package:pomotica/screen/settingScreen.dart';
import 'package:pomotica/widget/myIconButton.dart';
import 'package:pomotica/widget/myMusicPlayer.dart';
import 'package:pomotica/widget/myTagList.dart';
import 'package:pomotica/widget/myTimePicker.dart';

import '../../../../../widget/myContainer.dart';

class PomoCustomizers extends StatelessWidget {
  final PomoSpaceControllers ctrl;
  const PomoCustomizers({Key? key, required this.ctrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MyIconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => MyTimePicker(
                            pctrl: ctrl,
                          ));
                },
                icon: Icon(Iconsax.watch))
            .clicky(),
        MyIconButton(
                onPressed: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) => MyMusicPlayer(pctrl: ctrl));
                },
                icon: Icon(Iconsax.music))
            .clicky(),
        MyIconButton(
                onPressed: () {
                  Get.to(() => ComingSoonScreen());
                },
                icon: Icon(Iconsax.shop))
            .clicky(),
        MyIconButton(
                onPressed: () {
                  Get.to(() => PomoTasksOrderInput());
                },
                icon: Icon(Iconsax.task_square))
            .clicky(),
        MyIconButton(
                onPressed: () {
                  Get.to(() => RecordScreen());
                },
                icon: Icon(Iconsax.chart_21))
            .clicky(),
        MyIconButton(
                onPressed: () {
                  Get.to(() => SettingScreen());
                },
                icon: Icon(Iconsax.setting_2))
            .clicky(),
      ],
    );
  }
}
