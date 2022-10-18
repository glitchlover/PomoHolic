import 'package:flutter/material.dart';
import 'package:pomotica/widget/myIconButton.dart';

import '../pomo_space_screen.dart';

class PomoStart extends StatelessWidget {
  const PomoStart({
    Key? key,
    required this.ctrl,
  }) : super(key: key);

  final PomoSpaceControllers ctrl;

  @override
  Widget build(BuildContext context) {
    return MyIconButton(
            onPressed: () {
              // ctrl.setStatus(PomodoroStatus.runningPomodoro);
              ctrl.startTimer();
              // Get.to(() => TimerScreen(ctrl: ctrl));
            },
            icon: const Icon(Icons.play_arrow_rounded,
                // color: MyColors.primaryWhite.withOpacity(0.8)))
            ))
        .cicle(40);
  }
}
