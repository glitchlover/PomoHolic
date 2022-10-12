import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pomotica/core/myIsar.dart';

import '../model/musicModel.dart';

class MusicCrud {
  // musicGetAll

  List<MusicModel> musics = [
    MusicModel(id: 0, title: "Tick", audio: "assets/music/clock_ticking.mp3"),
    MusicModel(id: 1, title: "Rain", audio: "assets/music/Rain.mp3"),
    MusicModel(id: 2, title: "Fire", audio: "assets/music/fire.wav"),
    MusicModel(id: 3, title: "Bird Song", audio: "assets/music/bird_song.mp3"),
    MusicModel(id: 4, title: "Stream", audio: "assets/music/stream.mp3"),
    MusicModel(id: 5, title: "Waves", audio: "assets/music/waves.mp3"),
  ];

  // Map<String, String> sound = {
  //   "click": 
  // };
}
