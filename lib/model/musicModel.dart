import 'dart:convert';

class MusicModel {
  int id;
  String title;
  String audio;
  bool active;
  double volume;
  MusicModel({
    required this.id,
    required this.title,
    required this.audio,
    this.active = false,
    this.volume = 0.5,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'audio': audio,
      'active': active,
      'volume': volume,
    };
  }

  factory MusicModel.fromMap(Map<String, dynamic> map) {
    return MusicModel(
      id: map['id']?.toInt() ?? 0,
      title: map['title'] ?? '',
      audio: map['audio'] ?? '',
      active: map['active'] ?? false,
      volume: map['volume']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory MusicModel.fromJson(String source) => MusicModel.fromMap(json.decode(source));
}
