import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pomotica/core/myIsar.dart';
import 'package:pomotica/model/enums/pomodoroStatus.dart';
import 'package:pomotica/model/pomoticaUserModel.dart';

import '../model/pomoticaTasksOrderModel.dart';

class UserDataCrud {
  
  final Isar isar = MyIsar.isar;

  List<int> userDataCreate(PomoticaUserModel userModel) {
    isar.writeTxnSync(
        (isar) => {userModel.id = isar.pomoticaUserModels.putSync(userModel)});
    // print("id: " + userModel.id.toString());
    return [];
  }

  PomoticaUserModel userDataGetAll() {
    var userData = isar.pomoticaUserModels.getSync(1);
    if (userData == null) {
      var userModel = PomoticaUserModel(
        id: 1,
        defaultWorkingTime: 25,
        breakTime: 5,
        bigBreakTime: 10,
        numberOfSessions: 4,
        pomoCoins: 0,
        pomoGems: 0,
        currentSession: 0,
        currentStatus: PomodoroStatus.normal,
        currentActiveTaskId: null,
        exp: 0,
        level: 1,
        heart: 4,
        streak: 0,
        pomo: 0,
      );
      userDataCreate(userModel);
      return userModel;
    }
    return userData;
  }

  void updateUserData({
    int? defaultWorkingTime,
    int? breakTime,
    int? bigBreakTime,
    int? numberOfSessions,
    int? pomoCoins,
    int? pomoGems,
    int? currentSession,
    PomodoroStatus? currentStatus,
    int? currentActiveTaskId,
    int? level,
    int? exp,
    int? heart,
    int? streak,
    int? pomo,
  }) {
    PomoticaUserModel? userData = isar.pomoticaUserModels.getSync(1);

    if (userData == null) {
      var userModel = PomoticaUserModel(
        id: 1,
        defaultWorkingTime: 25,
        breakTime: 5,
        bigBreakTime: 15,
        numberOfSessions: 4,
        pomoCoins: 0,
        pomoGems: 0,
        currentSession: 0,
        currentStatus: PomodoroStatus.runningPomodoro,
        currentActiveTaskId: null,
        level: 0,
        exp: 0,
        heart: 4,
        pomo: 0,
        streak: 0,
      );
      userDataCreate(userModel);
    }
    var userModel = PomoticaUserModel(
      id: 1,
      defaultWorkingTime: defaultWorkingTime ?? userData!.defaultWorkingTime,
      breakTime: breakTime ?? userData!.breakTime,
      bigBreakTime: bigBreakTime ?? userData!.bigBreakTime,
      numberOfSessions: numberOfSessions ?? userData!.numberOfSessions,
      pomoCoins: pomoCoins ?? userData!.pomoCoins,
      pomoGems: pomoGems ?? userData!.pomoGems,
      currentSession: currentSession ?? userData!.currentSession,
      currentStatus: currentStatus ?? userData!.currentStatus,
      currentActiveTaskId: currentActiveTaskId,
      level: level ?? userData!.level,
      exp: exp ?? userData!.exp,
      heart: heart ?? userData!.heart,
      pomo: pomo ?? userData!.pomo,
      streak: streak ?? userData!.streak,
    );
    isar.writeTxnSync((isar) => isar.pomoticaUserModels.putSync(userModel));
    // print("change");
  }
}
