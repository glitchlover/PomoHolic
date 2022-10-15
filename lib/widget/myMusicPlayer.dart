import 'dart:async';
import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:iconsax/iconsax.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pomotica/database/musicCrud.dart';
import 'package:pomotica/model/musicModel.dart';
import 'package:pomotica/screen/HomeScreeen.dart/components/PomoSpace/pomoSpace.dart';
import 'package:pomotica/styles/colors.dart';
import 'package:pomotica/styles/text_style.dart';
import 'package:pomotica/widget/myIconButton.dart';

class MyMusicPlayer extends StatelessWidget {
  final PomoSpaceControllers pctrl;
  const MyMusicPlayer({Key? key, required this.pctrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyMusicPlayerController ctrl = Get.find<MyMusicPlayerController>();
    return AlertDialog(
      content: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    MyIconButton(
                        onPressed: () {
                          ctrl.onClick();
                        },
                        icon: Obx(() => Icon(ctrl.isPlaying.value
                            ? Iconsax.volume_cross
                            : Iconsax.volume_mute))),
                    const Spacer(),
                    MyIconButton(
                        onPressed: () async {
                          !pctrl.canPlay.value
                              ? ctrl.players.forEach((el) => el.pause())
                              : null;
                          Get.back();
                        },
                        icon: const Icon(Icons.close))
                  ],
                ),
                const SizedBox(height: 20),
                SizedBox(
                    width: Get.width - 50,
                    height: Get.height - 200,
                    child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: ctrl.musics.length,
                        separatorBuilder: (BuildContext context, int index) {
                          // print(ctrl.musics.length);
                          return const SizedBox(height: 20);
                        },
                        itemBuilder: (BuildContext context, int index) {
                          return MusicTile(
                            pctrl: pctrl,
                            index: index,
                          ); //data:snapshot.data);
                        }))
              ],
            )),
      ),
    );
  }
}

class MusicTile extends StatelessWidget {
  final PomoSpaceControllers pctrl;
  const MusicTile({
    Key? key,
    required this.pctrl,
    required this.index,
  }) : super(key: key);

  // final MyMusicPlayerController ctrl;
  final int index;

  @override
  Widget build(BuildContext context) {
    MyMusicPlayerController ctrl = Get.find<MyMusicPlayerController>();
    return Container(
        // padding: const EdgeInsets.all(10.0),
        child: SizedBox(
            height: 100,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Obx(() => GFCheckbox(
                            activeIcon: const Icon(Icons.circle, size: 10),
                            type: GFCheckboxType.circle,
                            activeBgColor: MyColors.blue,
                            activeBorderColor: MyColors.blue,
                            onChanged: (p0) {
                              ctrl.actives[index] = p0;
                              ctrl.actives.refresh();
                              ctrl.update();
                            },
                            value: ctrl.actives[index],
                            size: 15,
                          )),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                        width: Get.width / 8,
                        child: MyText(ctrl.musics[index].title,
                                color: MyColors.primaryWhite)
                            .text(14),
                      ),
                      Obx(() => Slider(
                            min: 0.0,
                            max: 1.0,
                            value: ctrl.musics[index].volume,
                            activeColor: MyColors.lighten(MyColors.pink),
                            inactiveColor: Colors.grey.withOpacity(0.5),
                            onChanged: (val) {
                              ctrl.onVolumeChange(val, index);
                              ctrl.update();
                            },
                          )),
                    ],
                  ),
                  // SizedBox(width: 20),
                ])));
  }
}

class MyMusicPlayerController extends GetxController {
  Rx<bool> isPlaying = false.obs;
  late RxList<MusicModel> musics;

  late RxList<bool> actives = <bool>[].obs;

  // late String selectedMusic;
  late List<AudioPlayer> players = [];

  @override
  void onInit() async {
    musics = MusicCrud().musics.obs;
    for (var element in musics) {
      actives.add(element.active);
    }
    update();
    await initPlayers();
    super.onInit();
  }

  Future<void> initPlayers() async {
    if (musics.length > players.length) {
      for (var music in musics) {
        players.add(AudioPlayer(playerId: music.id.toString()));
      }

      for (var player in players) {
        player
          ..setReleaseMode(ReleaseMode.loop)
          ..setPlayerMode(PlayerMode.mediaPlayer);
      }
    }
  }

  @override
  void onClose() {
    players.forEach((player) async {
      player
        ..audioCache.clearAll()
        ..pause()
        ..dispose();
    });

    isPlaying.value = false;
    update();
    Get.delete<MyMusicPlayerController>();
    dispose();
    print("player disposed");
    super.onClose();
  }

  void onClick() async {
    isPlaying.value = !isPlaying.value;
    isPlaying.value
        ? players.forEach((player) async => await onPlay())
        : players.forEach((player) async => await player.pause());
  }

  void onVolumeChange(double val, int index) async {
    musics[index].volume = val;
    musics.refresh();
    players[index].setVolume(val);
    isPlaying.value ? onPlay() : null;
    print("OnVolumeChange: " + players[index].playerId);
    update();
    // print(volume.value);
  }

  Future<void> onPlay() async {
    for (var music in musics) {
      final byteData = await rootBundle.load(music.audio);
      final file = File(
          '${(await getApplicationDocumentsDirectory()).path}\\pomoticaDb\\music\\${music.audio}');

      if (!file.existsSync()) {
        await file.create(recursive: true);
        await file.writeAsBytes(byteData.buffer.asUint8List());
      }
      AudioPlayer player = players[music.id];
      actives.listenAndPump((p0) async {
        p0[music.id]
            ? await player.play(DeviceFileSource(file.path),
                volume: music.volume)
            : player.pause();
      });
    }
  }
}
