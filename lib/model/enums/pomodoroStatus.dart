import 'package:isar/isar.dart';

enum PomodoroStatus {
  normal,
  runningPomodoro,
  pausedPomodoro,
  extraPomodoro,
  pausedExtraPomodoro,
  runningShortBreak,
  runningLongBreak,
  extraBreak,
  setFinished,
  exitPomodoro,
  giveUp
}

class PomodoroStatusConverter extends TypeConverter<PomodoroStatus, int> {
  const PomodoroStatusConverter();

  @override
  PomodoroStatus fromIsar(int object) {
    return PomodoroStatus.values[object];
  }

  @override
  int toIsar(PomodoroStatus object) {
    // TODO: implement toIsar
    return object.index;
  }
}
