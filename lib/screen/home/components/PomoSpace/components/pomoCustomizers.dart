import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pomotica/coming_soon_screen.dart';
import 'package:pomotica/screen/home/components/PomoSpace/pomoSpace.dart';
import 'package:pomotica/screen/home/components/pomoTasksOrderInput/pomoTasksOrderInput.dart';
import 'package:pomotica/screen/recordScreen.dart';
import 'package:pomotica/screen/settingScreen.dart';
import 'package:pomotica/widget/myIconButton.dart';
import 'package:pomotica/widget/myMusicPlayer.dart';
import 'package:pomotica/widget/myTimePicker.dart';

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
                icon: const Icon(Iconsax.watch))
            .clicky(),
        MyIconButton(
                onPressed: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) => MyMusicPlayer(pctrl: ctrl));
                },
                icon: const Icon(Iconsax.music))
            .clicky(),
        MyIconButton(
                onPressed: () {
                  Get.to(() => const ComingSoonScreen());
                },
                icon: const Icon(Iconsax.shop))
            .clicky(),
        MyIconButton(
                onPressed: () {
                  Get.to(() => const PomoTasksOrderInput());
                },
                icon: const Icon(Iconsax.task_square))
            .clicky(),
        MyIconButton(
                onPressed: () {
                  Get.to(() => const RecordScreen());
                },
                icon: const Icon(Iconsax.chart_21))
            .clicky(),
        MyIconButton(
                onPressed: () {
                  Get.to(() => const SettingScreen());
                },
                icon: const Icon(Iconsax.setting_2))
            .clicky(),
      ],
    );
  }
}
