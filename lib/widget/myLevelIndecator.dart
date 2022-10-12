import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pomotica/screen/HomeScreeen.dart/components/PomoSpace/components/pomoReward.dart';

import '../Themes/myColors.dart';
import '../Themes/myText.dart';
import '../screen/HomeScreeen.dart/components/PomoSpace/pomoSpace.dart';


class LevelIndecator extends StatelessWidget {
  const LevelIndecator({
    Key? key,
    required this.ctrl,
  }) : super(key: key);

  final PomoSpaceControllers ctrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          constraints: BoxConstraints(maxWidth: 200),
          child: Obx(() => GFProgressBar(
                leading: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  child: Row(
                    children: [
                      MyText("Level", color: Colors.blueGrey[100]).text(17),
                      SizedBox(width: 10,),
                      GFBadge(
                        color: MyColors.yellow,
                        shape: GFBadgeShape.circle,
                        child: MyText(ctrl.pomoLevel.value.toString()).text(12),
                        size: GFSize.MEDIUM,
                      ),
                    ],
                  ),
                ),
                // trailing: Padding(
                //     padding: EdgeInsets.all(8),
                //     child: Image.asset("assets/icons/thor.png", scale: 20)),
                lineHeight: 15,
                percentage:
                ctrl.pomoExp.value / (ctrl.pomoNeededExp.value) == double.nan || 
                ctrl.pomoExp.value / (ctrl.pomoNeededExp.value) == double.infinity ||
                ctrl.pomoExp.value / (ctrl.pomoNeededExp.value) == double.negativeInfinity? 0: 
                ctrl.pomoExp.value / (ctrl.pomoNeededExp.value) ,
            progressBarColor: MyColors.yellow,
            animation: true,
            animationDuration:3,
            autoLive: true,
          )
          ),
        ),
        SizedBox(width: 10,),
        PomoRewards(),
      ],
    );
  }
}