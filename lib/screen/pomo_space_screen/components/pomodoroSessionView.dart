import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pomotica/screen/pomo_space_screen/pomo_space_screen.dart';
import 'package:pomotica/styles/text_style.dart';

class PomodoroSessionView extends StatelessWidget {
  final PomoSpaceControllers pctrl;
  const PomodoroSessionView({Key? key, required this.pctrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // PomodoroSessionViewController ctrl =
    //     Get.put(PomodoroSessionViewController());
    // var icons = ctrl.icons;
    return Builder(builder: (context) {
      return Container(
        margin: const EdgeInsets.all(4),
        child: Obx(() => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Obx(() => MyStepProgressBar(
                //     currentStep: pctrl.currentSessions.value,
                //     totalSteps: pctrl.currentSettedSessions.value)),
                Image.asset("assets/img/key_found(2).png",
                    height: 28, width: 28),
                const SizedBox(width: 10),
                MyText(pctrl.currentSessions.value.toString()).text(20),
                MyText("/"),
                MyText(pctrl.currentSettedSessions.value.toString()).text(20),
              ],
            )),
      );
    });
  }
}
// class PomodoroSessionViewController extends GetxController {
//   RxList<Image> icons = <Image>[].obs;

//   Widget buildBadge(RxList<Image> icons, int done, int total) {
//     icons.clear();
//     update();
//     for (int i = 0; i < total; i++) {
//       if (i >= done) {
//         icons.add(undoneIcon());
//         continue;
//       }
//       icons.add(doneIcon());
//     }
//     return Row(
//         mainAxisAlignment: MainAxisAlignment.center, children: icons.value);
//   }

//   doneIcon() {
//     return Image.asset("assets/img/key_found(1).png", height: 35, width: 35);
//   }

//   undoneIcon() {
//     return Image.asset("assets/img/key_not_found(1).png", height: 30, width: 30);
//   }
// }
