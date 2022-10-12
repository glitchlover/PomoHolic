// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:pomotica/Themes/myColors.dart';
// import 'package:pomotica/Themes/myText.dart';
// import 'package:pomotica/database/musicCrud.dart';
// import 'package:pomotica/model/musicModel.dart';
// import 'package:pomotica/widget/myIconButton.dart';
// import 'package:pomotica/widget/myMusicPlayer.dart';
// import 'package:pomotica/widget/myTextField.dart';

// class SetMarket extends StatelessWidget {
//   const SetMarket({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     SetMarketController ctrl = Get.put(SetMarketController());
//     return AlertDialog(
//       backgroundColor: MyColors.appBackgroundColor,
//       title: MyText('Add Music').heading3(),
//       content: SizedBox(
//         width: Get.width - 185,
//         height: Get.height - 155,
//         child: ListView.builder(
//           itemCount: 1,
//           shrinkWrap: true,
//           itemBuilder: ((context, index) {
//             return FieldTiles(index: index);
//           }),
//         ),
//       ),
//       actions: [
//         Container(
//           decoration: BoxDecoration(
//               color: Colors.green, borderRadius: BorderRadius.circular(5)),
//           child: MyIconButton(
//             onPressed: () {
//               ctrl.updateMusicData();
//             },
//             icon: Icon(Icons.add),
//           ),
//         ),
//         MyIconButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//             icon: Icon(Iconsax.backward)),
//       ],
//     );
//   }
// }

// class FieldTiles extends StatelessWidget {
//   final int index;
//   const FieldTiles({Key? key, required this.index}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<SetMarketController>(
//       init: SetMarketController(),
//       initState: (_) {},
//       builder: (ctrl) {
//         return ListView.separated(
//           shrinkWrap: true,
//           itemCount: ctrl.musics.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Form(
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                   PathTile(path: ctrl.musics.elementAt(index).path),
//                   MusicTitle(
//                       name: ctrl.musics.elementAt(index).name, index: index),
//                   PriceTile(
//                       price: ctrl.musics.elementAt(index).price, index: index),
//                   PriceType(
//                       priceType: ctrl.musics.elementAt(index).priceType,
//                       index: index),
//                 ]));
//           },
//           separatorBuilder: (BuildContext context, int index) {
//             return SizedBox(
//               height: 20,
//             );
//           },
//         );
//       },
//     );
//   }
// }

// class PathTile extends StatelessWidget {
//   final String path;
//   const PathTile({Key? key, required this.path}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MyText(path).textt();
//   }
// }

// class PriceTile extends StatelessWidget {
//   final int? price;
//   final int index;
//   const PriceTile({Key? key, required this.price, required this.index})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     SetMarketController ctrl = Get.put(SetMarketController());
//     return Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
//       MyText("Price: "),
//       Expanded(
//           child: MyTextField(
//               label: "Price",
//               value: price.toString(),
//               onChanged: (value) {
//                 ctrl.setPrice(int.parse(value), index);
//               }))
//     ]);
//   }
// }

// class PriceType extends StatelessWidget {
//   String? priceType;
//   int index;
//   PriceType({
//     Key? key,
//     required this.priceType,
//     required this.index,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     SetMarketController ctrl = Get.put(SetMarketController());
//     return Row(
//       mainAxisSize: MainAxisSize.min,
//       crossAxisAlignment: CrossAxisAlignment.end,
//       children: [
//         Text('Type: '),
//         SizedBox(width: 10.0),
//         DropdownButton<String>(
//           value: priceType,
//           onChanged: (value) {
//             ctrl.setPriceType(value!, index);
//           },
//           elevation: 0,
//           items: ctrl.getItems(),
//         ),
//       ],
//     );
//   }
// }

// class MusicTitle extends StatelessWidget {
//   final String? name;
//   final int index;
//   const MusicTitle({Key? key, required this.name, required this.index})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     SetMarketController ctrl = Get.put(SetMarketController());
//     // List<TextEditingController> txtctrls =
//     //     List.generate(ctrl.musics.length, (index) => TextEditingController());
//     return Row(
//       mainAxisSize: MainAxisSize.min,
//       crossAxisAlignment: CrossAxisAlignment.end,
//       children: [
//         MyText("Name: "),
//         Expanded(
//             child: MyTextField(
//           label: "Name",
//           value: name,
//           onChanged: (value) {
//             ctrl.setName(value, index);
//           },
//         )),
//       ],
//     );
//   }
// }

// class SetMarketController extends GetxController {
//   RxList<MusicModel> musics = MusicCrud.musicGetALl().toList().obs;

//   List<DropdownMenuItem<String>> getItems() {
//     return const [
//       DropdownMenuItem(
//         child: Text("Coin"),
//         value: 'Coin',
//       ),
//       DropdownMenuItem(
//         child: Text("Gem"),
//         value: "Gem",
//       ),
//     ];
//   }

//   void setPriceType(String priceType, int index) {
//     musics.elementAt(index).priceType = priceType;
//     print("Name: " + musics.elementAt(index).toString());
//     update();
//   }

//   void setName(String name, int index) {
//     musics.elementAt(index).name = name;
//     update();
//     // print("Name: " + musics.elementAt(index).toString());
//   }

//   void setPrice(int price, int index) {
//     musics.elementAt(index).price = price;
//   }

//   void updateMusicData() {
//     for (var music in musics) {
//       MusicCrud.musicUpdate(music);
//       print("Update: " + music.toString());
//     }
//   }
// }
