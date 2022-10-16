import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pomotica/model/enums/pomodoroStatus.dart';
import 'package:pomotica/screen/home/components/PomoSpace/pomoSpace.dart';
import 'package:pomotica/screen/home/home_screen.dart';
import 'package:pomotica/styles/text_style.dart';

class GiveUpScreen extends StatelessWidget {
  final PomoSpaceControllers ctrl;
  const GiveUpScreen({
    Key? key,
    required this.ctrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/img/crying.png", scale: 3),
              ),
              const Spacer(),
              MyText("Oh no! You will loose xp...").heading3(),
              const SizedBox(
                height: 10,
              ),
              MyText("Do yo really want to give up?").textt(),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                      onPressed: () {
                        ctrl.currentTimeCount.value = 0;
                        ctrl.giveUp();
                        int exp = ctrl.pomoExp.value;
                        int dec = ((ctrl.currentSettedWorkTime.value *
                                    ctrl.currentSessions.value) /
                                4)
                            .round();
                        if (exp > 0) {
                          if (exp >= dec) {
                            exp -= dec;
                          } else {
                            exp = 0;
                          }
                        }
                        ctrl.pomoExp.value = exp;
                        ctrl.userDataInstance.updateUserData(exp: exp);
                        ctrl.setStatus(PomodoroStatus.normal);
                        Get.off(() => HomeScreen());
                      },
                      child: MyText("Yes").text(30)),
                  TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: MyText("No").text(30))
                ],
              ),
              const Spacer(),
            ],
          )),
    );
  }
}
