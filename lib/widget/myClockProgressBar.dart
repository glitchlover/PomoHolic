import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pomotica/model/enums/pomodoroStatus.dart';
import 'package:pomotica/styles/colors.dart';

import '../screen/HomeScreeen.dart/components/PomoSpace/pomoSpace.dart';

class MyClockProgressBar extends StatelessWidget {
  const MyClockProgressBar({Key? key, required this.ctrl}) : super(key: key);
  final size = 200.0;
  final PomoSpaceControllers ctrl;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PomoSpaceControllers>(
        init: PomoSpaceControllers(),
        initState: (_) {},
        builder: (ClipRectLayer) {
          return ctrl.currentStatus == PomodoroStatus.runningPomodoro?
            TweenAnimationBuilder(
              tween: Tween(begin: 0.0, end: 1.0),
              duration: Duration(seconds: ctrl.currentSettedBreakTime.value),
              builder: (context, double value, child) {
                return Container(
                    alignment: Alignment.center,
                    width: size,
                    height: size,
                    child: Stack(
                      children: [
                        ShaderMask(
                            shaderCallback: (rect) {
                              return SweepGradient(
                                  stops: [value, value],
                                  center: Alignment.center,
                                  colors: const [
                                    MyColors.primaryColor,
                                    Colors.transparent,
                                  ]).createShader(rect);
                            },
                            child: Container(
                                width: size,
                                height: size,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ))),
                        Center(
                          child: Container(
                              width: size - 10,
                              height: size - 10,
                              decoration: const BoxDecoration(
                                // color: MyColors.scaffoldBackgroundColor,
                                shape: BoxShape.circle,
                              )),
                        )
                      ],
                    ));
              }):Container();
        });
  }
}
