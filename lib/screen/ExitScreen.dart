// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:pomotica/Themes/myText.dart';
// import 'package:pomotica/core/myGetStorageBox.dart';

// import 'package:pomotica/screen/HomeScreeen.dart/components/PomoSpace/pomoSpace.dart';
// import 'package:pomotica/screen/HomeScreeen.dart/homeScreen.dart';
// import 'package:pomotica/screen/TimerScreen.dart';

// class ExitScreen extends StatelessWidget {
//   final PomoSpaceControllers ctrl;
//   const ExitScreen({
//     Key? key,
//     required this.ctrl,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//           alignment: Alignment.center,
//           margin: EdgeInsets.all(5),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Spacer(),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Image.asset("assets/img/crying.png", scale: 3),
//               ),
//               Spacer(),
//               MyText("Oh no! You will loose your treasure!...").heading3(),
//               SizedBox(
//                 height: 10,
//               ),
//               MyText("Do yo really want to exit?").textt(),
//               Spacer(),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   TextButton(
//                       onPressed: () {
//                         ctrl.currentTimeCount.value = 0;
//                         ctrl.exit();
//                         Get.off(() => HomeScreen());
//                       },
//                       child: MyText("Yes").text(30)),
//                   TextButton(
//                       onPressed: () {
//                         Get.back();
//                       },
//                       child: MyText("No").text(30))
//                 ],
//               ),
//               Spacer(),
//             ],
//           )),
//     );
//   }
// }