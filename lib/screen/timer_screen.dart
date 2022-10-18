import 'package:flutter/material.dart';
import 'package:pomotica/screen/pomo_space_screen/components/pomoClock.dart';
import 'package:pomotica/screen/pomo_space_screen/components/pomoControls.dart';
import 'package:pomotica/screen/pomo_space_screen/components/pomodoroSessionView.dart';
import 'package:pomotica/screen/pomo_space_screen/pomo_space_screen.dart';
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
              icon: const Icon(Icons.exit_to_app)),
          // disableBackButton: false,
          actions: [PomodoroSessionView(pctrl: ctrl)],
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          PomoClock(ctrl: ctrl),
          PomoControls(ctrl: ctrl),
        ]));
  }
}
