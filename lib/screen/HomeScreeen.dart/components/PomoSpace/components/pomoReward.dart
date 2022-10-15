import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../Themes/myText.dart';
import '../pomoSpace.dart';

class PomoRewards extends StatelessWidget {
  const PomoRewards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PomoRewardsController ctrl = Get.find<PomoRewardsController>();
    return Row(
      children: [
        Container(
            padding: const EdgeInsets.all(2),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 3),
                      child: Image.asset("assets/icons/coin.png"), height: 20,),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    child: Obx(
                        () => MyText(ctrl.pomoCoin.value.toString()).text(20)),
                  ),
                ])),
        const SizedBox(width: 5),
        Container(
            padding: const EdgeInsets.all(2),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 3),
                      child: Image.asset("assets/icons/gem.png"), height: 20,),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    child: Obx(
                        () => MyText(ctrl.pomoGem.value.toString()).text(20)),
                  ),
                ])),
        const SizedBox(width: 5),
        // Container(
        //     padding: EdgeInsets.all(2),
        //     child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           Container(
        //               margin: EdgeInsets.symmetric(vertical: 16, horizontal: 3),
        //               child: Image.asset("assets/icons/gem.png")),
        //           Container(
        //             margin: const EdgeInsets.symmetric(horizontal: 4),
        //             child: Obx(
        //                 () => MyText(ctrl.pomoGem.value.toString()).text(20)),
        //           ),
        //         ])), //TODO: heart later
      ],
    );
  }
}

class PomoRewardsController extends GetxController {
  PomoSpaceControllers pctrl;
  PomoRewardsController(this.pctrl);
  Rx<String> get pomoCoin => count(pctrl.pomoCoin.value).obs;
  Rx<String> get pomoGem => count(pctrl.pomoGems.value).obs;

  String count(int cum) {
    return (cum >= 1000) ? (cum / 100).toString() + "K" : cum.toString();
  }
}
