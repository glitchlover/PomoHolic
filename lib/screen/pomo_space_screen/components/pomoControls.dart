import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pomotica/screen/give_up_screen.dart';
import 'package:pomotica/styles/colors.dart';
import 'package:pomotica/styles/text_style.dart';
import 'package:pomotica/widget/myMusicPlayer.dart';

import '../pomo_space_screen.dart';

class PomoControls extends StatelessWidget {
  PomoControls({
    Key? key,
    required this.ctrl,
  }) : super(key: key);

  final PomoSpaceControllers ctrl;
  late final MyMusicPlayerController mctrl =
      Get.find<MyMusicPlayerController>();

  musicObserver() {
    ctrl.canPlay.listen((p0) {
      print(p0);
      p0
          ? mctrl.onPlay()
          : mctrl.players.forEach((player) {
              player.pause();
            });
    });
  }

  @override
  Widget build(BuildContext context) {
    musicObserver();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => ctrl.canGoNext.value ? nextButton() : Container(),
        ),
        const SizedBox(width: 10),
        Obx(() => ctrl.canPaused.value ? pauseButton() : Container()),
        Obx(() => ctrl.canContinue.value ? continueButton() : Container()),
        Obx(() => ctrl.canStart.value ? startButton() : Container()),
        const SizedBox(width: 10),
        Obx(() => ctrl.canGiveUp.value ? giveUpButton() : Container()),
      ],
    );
  }

  // ElevatedButton exitButton() {
  //   return ElevatedButton.icon(
  //       style: ButtonStyle(
  //         backgroundColor: MaterialStateProperty.all(MyColors.grey),
  //       ),
  //       onPressed: () {
  //         ctrl.exit();
  //       },
  //       icon: Icon(Icons.exit_to_app),
  //       label: MyText("Exit").textt());
  // }

  ElevatedButton giveUpButton() {
    return ElevatedButton.icon(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(MyColors.pinkDark),
        ),
        onPressed: () {
          ctrl.giveUp();
          Get.to(() => GiveUpScreen(ctrl: ctrl));
        },
        icon: const Icon(Icons.stop),
        label: MyText("Give Up!").textt());
  }

  ElevatedButton startButton() {
    return ElevatedButton.icon(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(MyColors.blue),
        ),
        onPressed: () {
          ctrl.startTimer();
        },
        icon: const Icon(Icons.play_arrow_rounded),
        label: MyText("Start").textt());
  }

  ElevatedButton pauseButton() {
    return ElevatedButton.icon(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(MyColors.blue),
        ),
        onPressed: () {
          ctrl.pause();
        },
        icon: const Icon(Icons.pause),
        label: MyText("Pause").textt());
  }

  ElevatedButton nextButton() {
    return ElevatedButton.icon(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(MyColors.green),
      ),
      onPressed: () {
        ctrl.next();
      },
      icon: const Icon(Icons.skip_next),
      label: MyText("Next").textt(),
    );
  }

  ElevatedButton continueButton() {
    return ElevatedButton.icon(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(MyColors.green),
      ),
      onPressed: () {
        ctrl.startTimer();
      },
      icon: const Icon(Icons.replay_rounded),
      label: MyText("Continue").textt(),
    );
  }
}
