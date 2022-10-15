// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pomotica/widget/myMusicPlayer.dart';

import 'components/PomoSpace/components/pomoReward.dart';
import 'components/PomoSpace/pomoSpace.dart';

class HomeScreen extends StatelessWidget {
  final bool? isNetConnected;
  final bool? isSomethingWentWrong;

  HomeScreen({
    Key? key,
    this.isNetConnected,
    this.isSomethingWentWrong,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(PomoSpaceControllers(), permanent: true);
    Get.put(PomoRewardsController(Get.find<PomoSpaceControllers>()));
    Get.lazyPut(() => MyMusicPlayerController());
    return Scaffold(appBar: null, body: SafeArea(child: PomoSpace()));
  }

  // loggedOut() async {
  //   AuthModel authModel = await HabiticaAuthServices.getAuth();
  //   HabiticaAuthServices([authModel.apiKey, authModel.userId])
  //       .setAuth(loggedIn_: false);
  //   Get.offAll(AuthScreen());
  // }
}

// class HomeScreenController extends GetxController {
//   var username = "".obs;
//   bool? isNetConnected;
//   bool? isSomethingWentWrong;

//   HomeScreenController(
//       {required this.isNetConnected, required this.isSomethingWentWrong});

//   @override
//   void onInit() async {
//     username.value = await UserDataService().getUsername();
//     // print("controller: " + username.value);
//     update();

//     if (!(isNetConnected as bool)) {
//       Get.snackbar("Internet is not connected",
//               "Please try to connect to the internet")
//           .close(withAnimations: true);
//     }
//     if (isSomethingWentWrong as bool) {
//       Get.snackbar("Something went wrong",
//               "Please enter an issue with details showed in debug under settings")
//           .close(withAnimations: true);
//     }
//     super.onInit();
//   }
// }

