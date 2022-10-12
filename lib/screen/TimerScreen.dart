import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pomotica/screen/ExitScreen.dart';
import 'package:pomotica/screen/HomeScreeen.dart/components/PomoSpace/components/pomoClock.dart';
import 'package:pomotica/screen/HomeScreeen.dart/components/PomoSpace/components/pomoControls.dart';
import 'package:pomotica/screen/HomeScreeen.dart/components/PomoSpace/components/pomodoroSessionView.dart';
import 'package:pomotica/screen/HomeScreeen.dart/components/PomoSpace/pomoSpace.dart';
import 'package:pomotica/screen/HomeScreeen.dart/homeScreen.dart';
import 'package:pomotica/widget/myAppBar.dart';
import 'package:pomotica/widget/myIconButton.dart';

class TimerScreen extends StatelessWidget {
  final PomoSpaceControllers ctrl;
  const TimerScreen({Key? key, required this.ctrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: MyIconButton(
              onPressed: () {
                // Get.off(() => ExitScreen(ctrl: ctrl));
              },
              icon: Icon(Icons.exit_to_app)),
          // disableBackButton: false,
          actions: [PomodoroSessionView(pctrl: ctrl)],
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          PomoClock(ctrl: ctrl),
          PomoControls(ctrl: ctrl),
        ]));
  }
}
