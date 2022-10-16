import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pomotica/widget/myMusicPlayer.dart';

import 'components/PomoSpace/components/pomoReward.dart';
import 'components/PomoSpace/pomoSpace.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    Key? key,
    this.isNetConnected,
    this.isSomethingWentWrong,
  }) : super(key: key) {
    Get.put(PomoSpaceControllers(), permanent: true);
    Get.put(PomoRewardsController(Get.find<PomoSpaceControllers>()));
    Get.lazyPut(() => MyMusicPlayerController());
  }

  final bool? isNetConnected;
  final bool? isSomethingWentWrong;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PomoSpace(),
      ),
    );
  }
}
