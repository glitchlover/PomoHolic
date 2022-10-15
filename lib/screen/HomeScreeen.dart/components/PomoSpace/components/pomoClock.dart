import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../Themes/myText.dart';
import '../pomoSpace.dart';

class PomoClock extends StatelessWidget {
  const PomoClock({
    Key? key,
    required this.ctrl,
  }) : super(key: key);

  final PomoSpaceControllers ctrl;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Obx(
        () => (((ctrl.currentTimeCount.value / (60 * 60)) % 60).floor() > 0)
            ? Row(
                children: [
                  Container(
                    child: MyText(
                            ((ctrl.currentTimeCount.value / (60 * 60)) % 60)
                                .floor()
                                .toString()
                                .padLeft(2, "0"))
                        .ttextt(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MyText(":").ttextt(),
                  ),
                ],
              )
            : Container(),
      ),
      Container(
        child: Obx(() => MyText(((ctrl.currentTimeCount.value / 60) % 60)
                .floor()
                .toString()
                .padLeft(2, "0"))
            .ttextt()),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: MyText(":").ttextt(),
      ),
      Container(
        child: Obx(() => MyText((ctrl.currentTimeCount.value % 60)
                .floor()
                .toString()
                .padLeft(2, "0"))
            .ttextt()),
      )
    ]);
  }
}