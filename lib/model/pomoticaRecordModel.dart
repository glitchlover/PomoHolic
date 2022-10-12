// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';

part "pomoticaRecordModel.g.dart";

@Collection()
class PomoticaRecordModel {
  @Id()
  int? id = Isar.autoIncrement;
  DateTime date;
  DateTime startTime;
  DateTime endTime;
  int pomos = 0;
  PomoticaRecordModel({
    this.id,
    required this.date,
    required this.startTime,
    required this.endTime,
    required this.pomos,
  });

  PomoticaRecordModel copyWith({
    int? id,
    DateTime? date,
    DateTime? startTime,
    DateTime? endTime,
    int? pomos,
  }) {
    return PomoticaRecordModel(
      id: id ?? this.id,
      date: date ?? this.date,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      pomos: pomos ?? this.pomos,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'date': date.millisecondsSinceEpoch,
      'startTime': startTime.millisecondsSinceEpoch,
      'endTime': endTime.millisecondsSinceEpoch,
      'pomos': pomos,
    };
  }

  factory PomoticaRecordModel.fromMap(Map<String, dynamic> map) {
    return PomoticaRecordModel(
      id: map['id'] != null ? map['id'] as int : null,
      date: DateTime.fromMillisecondsSinceEpoch(map['date'] as int),
      startTime: DateTime.fromMillisecondsSinceEpoch(map['startTime'] as int),
      endTime: DateTime.fromMillisecondsSinceEpoch(map['endTime'] as int),
      pomos: map['pomos'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory PomoticaRecordModel.fromJson(String source) => PomoticaRecordModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PomoticaRecordModel(id: $id, date: $date, startTime: $startTime, endTime: $endTime, pomos: $pomos)';
  }

  @override
  bool operator ==(covariant PomoticaRecordModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.date == date &&
      other.startTime == startTime &&
      other.endTime == endTime &&
      other.pomos == pomos;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      date.hashCode ^
      startTime.hashCode ^
      endTime.hashCode ^
      pomos.hashCode;
  }
}
