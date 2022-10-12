import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

import 'package:pomotica/Themes/myColors.dart';
import 'package:pomotica/model/habiticaUserModel.dart';

import 'enums/pomodoroStatus.dart';

part 'pomoticaUserModel.g.dart';

@Collection()
class PomoticaUserModel {
  @Id()
  int? id;

  final int defaultWorkingTime;
  final int breakTime;
  final int bigBreakTime;
  final int numberOfSessions;
  final int pomoCoins;
  final int pomoGems;
  final int level;
  final int exp;
  final int heart;
  final int streak;
  final int pomo;

  @PomodoroStatusConverter()
  final PomodoroStatus currentStatus;
  final int currentSession;
  int? currentActiveTaskId;
  PomoticaUserModel({
    this.id,
    required this.defaultWorkingTime,
    required this.breakTime,
    required this.bigBreakTime,
    required this.numberOfSessions,
    required this.pomoCoins,
    required this.pomoGems,
    required this.exp,
    required this.level,
    required this.heart,
    required this.streak,
    required this.pomo,
    required this.currentStatus,
    required this.currentSession,
    this.currentActiveTaskId,
  });

  final Map<PomodoroStatus, String> statusDescription = {
    PomodoroStatus.normal: 'Let\'s start our journey!',
    PomodoroStatus.runningPomodoro: 'Focus in your task buddy!',
    PomodoroStatus.pausedPomodoro: 'Ready for a pomodoro?',
    PomodoroStatus.extraPomodoro: 'Wow you are a hard worker ...',
    PomodoroStatus.runningShortBreak: 'Time to relax comrade ...',
    PomodoroStatus.runningLongBreak: 'Time to take a long break, comrade ...',
    PomodoroStatus.extraBreak: 'You are taking too long, come back fast!',
    PomodoroStatus.setFinished:
        'Well done comrade, you have reached to your goal! , here\'s your reward',
    PomodoroStatus.giveUp: 'Well try harder next time ...'
  };

  final Map<PomodoroStatus, String> statusAnimation = {
    PomodoroStatus.normal: "Tomato Waiting",
    PomodoroStatus.runningPomodoro: "Tomato Happy",
    PomodoroStatus.pausedPomodoro: "Tomato Waiting",
    PomodoroStatus.extraPomodoro: "Tomato Extra Happy",
    PomodoroStatus.runningShortBreak: "Tomato Sleeping",
    PomodoroStatus.runningLongBreak: "Tomato Sleeping",
    PomodoroStatus.extraBreak: "Tomato Meh",
    PomodoroStatus.setFinished: "Tomato Extra Happy",
    PomodoroStatus.giveUp: "Tomato Dead"
  };

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'defaultWorkingTime': defaultWorkingTime,
      'breakTime': breakTime,
      'bigBreakTime': bigBreakTime,
      'numberOfSessions': numberOfSessions,
      'pomoCoins': pomoCoins,
      'pomoGems': pomoGems,
      'exp': exp,
      'heart': heart,
      'streak': streak,
      'pomo': pomo,
      'currentStatus': currentStatus.index,
      'currentSession': currentSession,
      'currentActiveTaskId': currentActiveTaskId,
    };
  }

  factory PomoticaUserModel.fromMap(Map<String, dynamic> map) {
    return PomoticaUserModel(
      id: map['id']?.toInt(),
      defaultWorkingTime: map['defaultWorkingTime']?.toInt() ?? 0,
      breakTime: map['breakTime']?.toInt() ?? 0,
      bigBreakTime: map['bigBreakTime']?.toInt() ?? 0,
      numberOfSessions: map['numberOfSessions']?.toInt() ?? 0,
      pomoCoins: map['pomoCoins']?.toInt() ?? 0,
      pomoGems: map['pomoGems']?.toInt() ?? 0,
      level: map['pomoLevel']?.toInt() ?? 0,
      exp: map['exp']?.toInt() ?? 0,
      heart: map['heart']?.toInt() ?? 0,
      streak: map['streak']?.toInt() ?? 0,
      pomo: map['pomo']?.toInt() ?? 0,
      currentStatus: PomodoroStatus.values[map['currentStatus']],
      currentSession: map['currentSession']?.toInt() ?? 0,
      currentActiveTaskId: map['currentActiveTaskId']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory PomoticaUserModel.fromJson(String source) =>
      PomoticaUserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PomoticaUserModel(id: $id, defaultWorkingTime: $defaultWorkingTime, breakTime: $breakTime, bigBreakTime: $bigBreakTime, numberOfSessions: $numberOfSessions, pomoCoins: $pomoCoins, pomoGems: $pomoGems, exp: $exp, heart: $heart, streak: $streak, pomo: $pomo, currentStatus: $currentStatus, currentSession: $currentSession, currentActiveTaskId: $currentActiveTaskId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PomoticaUserModel &&
        other.id == id &&
        other.defaultWorkingTime == defaultWorkingTime &&
        other.breakTime == breakTime &&
        other.bigBreakTime == bigBreakTime &&
        other.numberOfSessions == numberOfSessions &&
        other.pomoCoins == pomoCoins &&
        other.pomoGems == pomoGems &&
        other.exp == exp &&
        other.heart == heart &&
        other.streak == streak &&
        other.pomo == pomo &&
        other.currentStatus == currentStatus &&
        other.currentSession == currentSession &&
        other.currentActiveTaskId == currentActiveTaskId;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        defaultWorkingTime.hashCode ^
        breakTime.hashCode ^
        bigBreakTime.hashCode ^
        numberOfSessions.hashCode ^
        pomoCoins.hashCode ^
        pomoGems.hashCode ^
        exp.hashCode ^
        heart.hashCode ^
        streak.hashCode ^
        pomo.hashCode ^
        currentStatus.hashCode ^
        currentSession.hashCode ^
        currentActiveTaskId.hashCode;
  }
}
