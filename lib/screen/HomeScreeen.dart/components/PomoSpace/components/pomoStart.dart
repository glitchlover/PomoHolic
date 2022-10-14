import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pomotica/Themes/myColors.dart';
import 'package:pomotica/model/enums/pomodoroStatus.dart';
import 'package:pomotica/screen/TimerScreen.dart';
import 'package:pomotica/widget/myConfetti.dart';
import 'package:pomotica/widget/myIconButton.dart';
import 'package:pomotica/widget/myTimePicker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../../Themes/myText.dart';
import '../pomoSpace.dart';

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
            icon: Icon(Icons.play_arrow_rounded,
                // color: MyColors.primaryWhite.withOpacity(0.8)))
            ))
        .cicle(40);
  }
}
