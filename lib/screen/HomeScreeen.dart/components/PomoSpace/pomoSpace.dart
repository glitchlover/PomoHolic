import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pomotica/core/myGetStorageBox.dart';
import 'package:pomotica/database/pomoticaRecordCrud.dart';
import 'package:pomotica/database/tasksOrderCrud.dart';
import 'package:pomotica/database/userDataCrud.dart';
import 'package:pomotica/model/enums/pomodoroStatus.dart';
import 'package:pomotica/model/pomoticaRecordModel.dart';
import 'package:pomotica/model/pomoticaUserModel.dart';
// import 'package:pomotica/widget/myConfetti.dart';

import 'package:pomotica/screen/HomeScreeen.dart/components/PomoSpace/components/pomoClock.dart';
import 'package:pomotica/screen/HomeScreeen.dart/components/PomoSpace/components/pomoControls.dart';
import 'package:pomotica/screen/HomeScreeen.dart/components/PomoSpace/components/pomodoroSessionView.dart';
import 'package:pomotica/screen/HomeScreeen.dart/components/pomoTasksOrderInput/pomoTasksOrderInput.dart';
import 'package:pomotica/screen/HomeScreeen.dart/homeScreen.dart';
import 'package:pomotica/services/isolates/iso.dart';
import 'package:pomotica/styles/colors.dart';
import 'package:pomotica/styles/text_style.dart';
import 'package:pomotica/widget/myIconButton.dart';
import 'package:pomotica/widget/myLevelIndecator.dart';
import 'package:pomotica/widget/myTimePicker.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wakelock/wakelock.dart';

import '../../../../widget/myAlerDialog.dart';
import 'components/pomoCustomizers.dart';
import 'components/pomoTaskName.dart';

class PomoSpace extends StatelessWidget {
  PomoSpace({Key? key}) : super(key: key);

  PomoSpaceControllers ctrl = Get.put(PomoSpaceControllers());

  @override
  Widget build(BuildContext context) {
    ctrl.updateUserData();
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: Get.height - 60,
          child: Center(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              LevelIndecator(ctrl: ctrl),
              const Spacer(
                flex: 1,
              ),
              Obx(
                () => GestureDetector(
                  onTap: () {
                    Get.to(() => const PomoTasksOrderInput());
                  },
                  child: ctrl.pomoActiveTask.value != ""
                      ? PomoTaskName(pctrl: ctrl)
                      : MyText(
                          "+ Add task to focus",
                          color: MyColors.primaryWhite.withOpacity(.3),
                        ).textt(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Image.asset("assets/img/pomobase.png",
                    width: 100, height: 100),
              ),
              PomodoroSessionView(pctrl: ctrl),
              PomoClock(ctrl: ctrl),
              const SizedBox(height: 10),
              PomoControls(ctrl: ctrl),
              const SizedBox(height: 10),
              const Spacer(flex: 2),
              PomoCustomizers(ctrl: ctrl),
              // DownwordScroller(),
            ],
          )),
        ),
        // Obx(() => MyConfetti(
        //       isRewarded: ctrl.canReward.value,
        //     )),
      ],
    );
  }
}

class PomoSpaceControllers extends GetxController {
  Rx<bool> canContinue = false.obs;
  Rx<bool> canGiveUp = false.obs;
  Rx<bool> canGoNext = false.obs;
  Rx<bool> canPaused = false.obs;
  Rx<bool> canPlay = false.obs;
  Rx<bool> canReward = false.obs;
  Rx<bool> canStart = false.obs;
  Rx<bool> canStreak = false.obs;
  Rx<bool> canTrack = false.obs;
  Rx<bool> canWake = false.obs;
  late Rx<int> currentSessions;

  ////////// pomodoro constant variables //////////
  late Rx<int> currentSettedWorkTime;
  late Rx<int> currentSettedBigBreakTime;
  late Rx<int> currentSettedBreakTime;
  late Rx<int> currentSettedSessions;
  late Rx<PomodoroStatus> currentStatus;

  ////////// traking variables //////////
  Rx<int> currentTimeCount = 0.obs;
  Rx<int> currentTimePercentage = 0.obs;
  late Rx<DateTime> endDate;
  late DateTime startDate;

  ///////////////////////record/////////////////////
  Rx<bool> isHappy = false.obs;
  Rx<bool> isNormal = false.obs;
  Rx<bool> isSad = false.obs;

  ///////////////////// task ///////////////////////
  Rx<String> pomoActiveTask = "".obs;
  Rx<int> pomoActiveTaskId = 0.obs;
  Rx<String> pomoActiveTaskTag = "".obs;

  //////////////////// reward tracker ////////////////////
  late Rx<int> pomoCoin;
  late Rx<int> pomoGems;
  late Rx<int> pomoHeart;
  late Rx<int> pomoLevel;
  late Rx<int> pomoExp;
  Rx<int> get pomoNeededExp =>
      (50 * ((pomoLevel.value + 1) * (pomoLevel.value + 1)) -
              (50 * (pomoLevel.value + 1)))
          .round()
          .obs;
  //////////////////////instances ///////////////////////
  TasksOrderCrud taskDataInstance = TasksOrderCrud();
  UserDataCrud userDataInstance = UserDataCrud();

  Timer? _timer;

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }

  ////////////////////// initialization ////////////////////////

  @override
  void onInit() {
    setInitialUserData();
    setStatus(PomodoroStatus.normal);
    listedToRecord();
    print(currentSettedWorkTime);
    update();
    super.onInit();
  }

  setInitialUserData() {
    PomoticaUserModel userData = userDataInstance.userDataGetAll();
    currentSessions = userData.currentSession.obs;
    currentSettedBreakTime = userData.breakTime.obs;
    currentSettedBigBreakTime = userData.bigBreakTime.obs;
    currentSettedWorkTime = userData.defaultWorkingTime.obs;
    currentSettedSessions = userData.numberOfSessions.obs;
    currentStatus = userData.currentStatus.obs;
    startDate = DateTime.now();
    endDate = DateTime.now().obs;
    pomoCoin = userData.pomoCoins.obs;
    pomoGems = userData.pomoGems.obs;
    pomoLevel = userData.level.obs;
    pomoExp = userData.exp.obs;
    pomoHeart = userData.heart.obs;
  }

  /// auto updating variable
  void updateUserData() {
    currentSettedWorkTime.listen((p0) {
      userDataInstance.updateUserData(defaultWorkingTime: p0);
      print("workingTime: " + p0.toString());
    });
    currentSettedBreakTime.listen((p0) {
      userDataInstance.updateUserData(breakTime: p0);
    });
    currentSettedBigBreakTime.listen((p0) {
      userDataInstance.updateUserData(bigBreakTime: p0);
    });
    currentSessions.listen((p0) {
      userDataInstance.updateUserData(currentSession: p0);
    });
    currentSettedSessions.listen((p0) {
      userDataInstance.updateUserData(numberOfSessions: p0);
    });
    pomoCoin.listen((p0) {
      userDataInstance.updateUserData(pomoCoins: p0);
    });
    pomoGems.listen((p0) {
      userDataInstance.updateUserData(pomoGems: p0);
    });
    currentStatus.listen((p0) {
      userDataInstance.updateUserData(currentStatus: p0);
    });
    pomoActiveTaskId.listen((p0) {
      userDataInstance.updateUserData(currentActiveTaskId: p0);
      print("id: " + p0.toString());
    });
    pomoExp.listen((p0) {
      print("Exp changes: " + p0.toString());
      userDataInstance.updateUserData(exp: p0);
      print("Exp needed: " + pomoNeededExp.toString());
      update();
    });
    pomoLevel.listen((p0) {
      print("level " + p0.toString());
      userDataInstance.updateUserData(level: p0);
      // ctrl.pomoNeededExp.value = (((p0 * p0 - p0) * ctrl.pomoNeededExp.value));
    });
    pomoHeart.listen((p0) {
      userDataInstance.updateUserData(heart: p0);
    });
  }

  ////////////////////// alien file callings //////////////////
  void updateVar(
      {required Rx<int> defaultWorkingTime,
      required Rx<int> breakTime,
      required Rx<int> numberOfSessions}) {
    currentSettedBreakTime.value = breakTime.value * 60;
    currentSettedWorkTime.value = defaultWorkingTime.value * 60;
    currentSettedSessions.value = numberOfSessions.value;
    update();
  }

  void updateActiveTasks({required int pomoActiveTaskId}) async {
    Get.off(() => MyTimePicker(pctrl: Get.put(this)));
    this.pomoActiveTaskId.value = pomoActiveTaskId;
    pomoActiveTask.value =
        await taskDataInstance.tasksOrderGet(pomoActiveTaskId);
    update();
  }

  void setStatus(PomodoroStatus currentStatus) {
    this.currentStatus.value = currentStatus;
    update();
    print("currentStatus: " + this.currentStatus.value.toString());
    switch (currentStatus) {
      case PomodoroStatus.normal:
        canPlay.value = false;
        canPaused.value = false;
        canStart.value = true;
        canContinue.value = false;
        canGiveUp.value = false;
        canGoNext.value = false;
        canTrack.value = false;
        canReward.value = false;
        update();
        break;

      case PomodoroStatus.runningPomodoro:
        canPlay.value = true;
        canPaused.value = true;
        canStart.value = false;
        canContinue.value = false;
        canGiveUp.value = true;
        canGoNext.value = false;
        canTrack.value = false;
        canReward.value = false;
        update();
        break;

      case PomodoroStatus.pausedPomodoro:
        canPlay.value = false;
        canPaused.value = false;
        canStart.value = false;
        canContinue.value = true;
        canGiveUp.value = true;
        canGoNext.value = false;
        canTrack.value = true;
        canReward.value = false;
        _timer?.cancel();
        update();
        break;

      case PomodoroStatus.extraPomodoro:
        canPlay.value = true;
        canPaused.value = true;
        canStart.value = false;
        canContinue.value = false;
        canGiveUp.value = true;
        canGoNext.value = true;
        canTrack.value = true;
        canReward.value = false;
        update();
        break;

      case PomodoroStatus.pausedExtraPomodoro:
        canPlay.value = false;
        canPaused.value = false;
        canStart.value = false;
        canContinue.value = true;
        canGiveUp.value = true;
        canGoNext.value = true;
        canTrack.value = true;
        canReward.value = false;
        _timer?.cancel();
        update();
        break;

      case PomodoroStatus.runningShortBreak:
        canPlay.value = false;
        canPaused.value = false;
        canStart.value = false;
        canContinue.value = false;
        canGiveUp.value = true;
        canGoNext.value = true;
        canTrack.value = false;
        canReward.value = false;
        update();
        break;

      case PomodoroStatus.runningLongBreak:
        canPlay.value = false;
        canPaused.value = false;
        canStart.value = false;
        canContinue.value = false;
        canGiveUp.value = true;
        canGoNext.value = true;
        canTrack.value = false;
        canReward.value = false;
        update();
        break;

      case PomodoroStatus.extraBreak:
        canPlay.value = false;
        canPaused.value = false;
        canStart.value = false;
        canContinue.value = false;
        canGiveUp.value = true;
        canGoNext.value = true;
        canTrack.value = true;
        canReward.value = false;
        update();
        break;

      case PomodoroStatus.setFinished:
        canPlay.value = false;
        canPaused.value = false;
        canStart.value = false;
        canContinue.value = false;
        canGiveUp.value = true;
        canGoNext.value = false;
        canTrack.value = false;
        canReward.value = true;
        _timer?.cancel();
        update();
        break;

      case PomodoroStatus.giveUp:
        canPlay.value = false;
        canPaused.value = false;
        canStart.value = false;
        canContinue.value = true;
        canGiveUp.value = true;
        canGoNext.value = false;
        canTrack.value = false;
        canReward.value = false;
        _timer?.cancel();
        update();
        break;

      case PomodoroStatus.exitPomodoro:
        // TODO: Handle this case.
        break;
    }
  }

////////////////////// Running Pomodoro //////////////////////
  void startTimer() {
    startDate = DateTime.now();
    _timer?.cancel();
    Wakelock.enable();
    pomoActiveTaskTag.value == "" ? pomoActiveTaskTag.value = "Other" : null;
    if (currentStatus.value == PomodoroStatus.pausedExtraPomodoro) {
      setStatus(PomodoroStatus.extraPomodoro);
    } else {
      setStatus(PomodoroStatus.runningPomodoro);
    }
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) async {
      currentTimeCount.value++;
      update();

      if (currentTimeCount.value == currentSettedWorkTime.value) {
        setStatus(PomodoroStatus.extraPomodoro);
        currentSessions.value++;
        update();
        Get.snackbar("You have done a lot!", "Go and take a break",
            duration: const Duration(seconds: 5),
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.all(8),
            // backgroundColor: MyColors.blue.withOpacity(.5),
            snackStyle: SnackStyle.FLOATING,
            isDismissible: true);
      }
    });
  }

//////////////////////// Running Break //////////////////////////
  static void breakTimeStart() {
    PomoSpaceControllers ctrl = Get.find<PomoSpaceControllers>();
    ctrl._timer?.cancel();
    ctrl.currentTimeCount.value = 0;
    ctrl.update();
    if (ctrl.currentSessions.value >= ctrl.currentSettedSessions.value) {
      ctrl.setStatus(PomodoroStatus.setFinished);
      ctrl.currentSessions.value = 0;
      ctrl.giveRewards();
      ctrl.update();
    } else {
      ctrl.setStatus(PomodoroStatus.runningShortBreak);
      ctrl._timer = Timer.periodic(const Duration(seconds: 1), (timer) async {
        ctrl.currentTimeCount.value++;
        ctrl.update();
        if (ctrl.currentTimeCount.value == ctrl.currentSettedBreakTime.value) {
          ctrl.setStatus(PomodoroStatus.extraBreak);
          Get.snackbar(
            "Break time is over.",
            "Go and work harder",
            duration: const Duration(seconds: 5),
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.all(8),
            // backgroundColor: MyColors.blue.withOpacity((.5)),
            snackStyle: SnackStyle.FLOATING,
            isDismissible: true,
          );
        }
      });
    }
  }

//////////////////////// next //////////////////////////

  void next() {
    Wakelock.enable();
    if (currentStatus.value == PomodoroStatus.extraPomodoro ||
        currentStatus.value == PomodoroStatus.pausedExtraPomodoro) {
      currentSessions.value == currentSettedSessions.value
          ? setStatus(PomodoroStatus.runningLongBreak)
          : setStatus(PomodoroStatus.runningShortBreak);
      Iso(debugName: "break-time").startEngine(breakTimeStart);
    } else if (currentStatus.value == PomodoroStatus.runningLongBreak ||
        currentStatus.value == PomodoroStatus.runningShortBreak ||
        currentStatus.value == PomodoroStatus.extraBreak) {
      setStatus(PomodoroStatus.runningPomodoro);
      startTimer();
    } else {
      print("Status not found for " + currentStatus.string);
    }
    currentTimeCount.value = 0;
    // Get.closeAllSnackbars();
    update();
  }

////////////////////// Pause and Stop //////////////////////
  void pause() {
    Wakelock.disable();
    if (currentStatus.value == PomodoroStatus.runningPomodoro) {
      setStatus(PomodoroStatus.pausedPomodoro);
    } else if (currentStatus.value == PomodoroStatus.extraPomodoro) {
      setStatus(PomodoroStatus.pausedExtraPomodoro);
    } else {
      print("Pause not found for" + currentStatus.toString());
    }
  }

  void giveUp() {
    endDate.value = DateTime.now();
    Wakelock.disable();
    setStatus(PomodoroStatus.giveUp);
    pomoActiveTask.value = "";
    pomoActiveTaskTag.value = "";
    currentSessions.value = 0;
    Get.closeAllSnackbars();
    update();
  }

  // void exit() {
  //   endDate.value = DateTime.now();
  //   Wakelock.disable();
  //   setStatus(PomodoroStatus.exitPomodoro);
  //   currentTimeCount.value = 0;
  //   pomoActiveTask.value = "";
  //   pomoActiveTaskTag.value = "";
  //   currentSessions.value = 0;
  //   Get.closeAllSnackbars();
  //   Get.to(() => ExitScreen(ctrl: Get.put(this)));
  //   update();
  // }

  ////////////////////// Rewards //////////////////////
  void giveRewards() {
    endDate.value = DateTime.now();
    updateExp();
    pomoExp.value +=
        ((currentSettedWorkTime.value / 60 + currentSettedSessions.value))
            .round();
    print("adding exp: " +
        ((currentSettedWorkTime.value / 60 + currentSettedSessions.value))
            .round()
            .toString());
    pomoCoin.value = pomoCoin.value + (MyGetStorage().box.read("coin") as int);
    pomoGems.value = pomoGems.value + (MyGetStorage().box.read("gem") as int);
    update();
    Get.dialog(MyAlertDialog(
      title: Center(child: MyText("Congratulation").heading3()),
      content: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    child: Row(
                  children: [
                    Image.asset("assets/icons/coin.png", width: 25),
                    MyText(" X " + MyGetStorage().box.read("coin").toString())
                        .textt(),
                  ],
                )),
                Container(
                    child: Row(
                  children: [
                    Image.asset("assets/icons/gem.png", width: 25),
                    MyText(" X " + MyGetStorage().box.read("gem").toString())
                        .textt(),
                  ],
                )),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Container(
                margin: const EdgeInsets.all(2),
                alignment: Alignment.center,
                child: Image.asset("assets/img/treasure_open.png", width: 100)),
          ],
        ),
      ),
      contentPadding: const EdgeInsets.all(0),
      actions: [
        Center(
          child: MyIconButton(
                  onPressed: () {
                    update();
                    Get.to(() => const HomeScreen());
                  },
                  icon: const Icon(Icons.check, color: MyColors.yellow))
              .cicle(25, MyColors.yellow.withOpacity(.2)),
        )
      ],
      semanticLabel: '', titlePadding: const EdgeInsets.all(8),
      // actionsPadding: EdgeInsets.all(20),
    ));
  }

  listedToRecord() {
    endDate.listen((event) {
      print("update date");
      PomoticaRecordCrud().recordsOrderUpdate(PomoticaRecordModel(
          date: DateTime.now(),
          startTime: startDate,
          endTime: event,
          pomos: currentSettedSessions.value));
    });
  }

  void updateExp() {
    if (pomoExp.value < pomoNeededExp.value) return;
    pomoLevel.value += 1;
    pomoNeededExp.value =
        (50 * ((pomoLevel.value + 1) * (pomoLevel.value + 1)) -
                (50 * (pomoLevel.value + 1)))
            .round();
    update();
    updateExp();
  }
}
