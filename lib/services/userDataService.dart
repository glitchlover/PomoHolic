import 'dart:async';
import 'dart:io';

import 'package:pomotica/core/habiticaApi.dart';
import 'package:pomotica/database/tasksOrderCrud.dart';
import 'package:pomotica/database/userDataCrud.dart';
import 'package:pomotica/model/HabiticaTaskModel.dart';
import 'package:pomotica/model/pomoticaUserModel.dart';
import 'package:pomotica/services/documentServices.dart';

import '../model/enums/pomodoroStatus.dart';
import '../model/pomoticaTasksOrderModel.dart';

class UserDataService {
  String username = "";
  int defaultWorkingTime = 25;
  int breakTime = 5;
  int bigBreakTime = 10;
  int numberOfSessions = 4;
  PomodoroStatus currentStatus = PomodoroStatus.normal;
  int currentSession = 0;
  int pomoCoins = 0;
  int pomoGems = 0;
  String taskpath = '/api/v3/tasks/user';

  getUsername() async {
    var habiticaUserModel =
        await DocumentServices(db: "habitica_user").retriveUser();
    username = habiticaUserModel.data.profile.name;
    print(username);
    return username;
  }

  fetchTaskModel() async {
    var response = await HabiticaApi(path: taskpath).getApiResponse();

    try {
      if (response.statusCode == 200) {
        try {
          HabiticaTaskModel taskModel =
              HabiticaTaskModel.fromJson(response.body);
          return taskModel.data;
        } catch (e) {
          return "Error: " + e.toString();
        }
      } else {
        return "Error!: statusCode = " + response.statusCode.toString();
      }
    } on SocketException catch (e) {
      return "Not Connected: " + e.message;
    }
  }

  Future<List<PomoticaTasksOrder>> habiticaToPomoticaTaskModel() async {
    List<PomoticaTasksOrder> pomoticaTasksOrder = [];
    List<Datum>? data = await fetchTaskModel();

    for (int i = 0; i < data!.length; i++) {
      pomoticaTasksOrder.add(PomoticaTasksOrder(
          pomoticataskid: i,
          frequency: data[i].frequency,
          type: data[i].type,
          notes: data[i].notes,
          tags: data[i].tags,
          value: data[i].value,
          priority: data[i].priority,
          updatedAt: data[i].updatedAt,
          id: data[i].id,
          text: data[i].text,
          alias: data[i].alias,
          everyX: data[i].everyX,
          streak: data[i].streak,
          yesterDaily: data[i].yesterDaily,
          completed: data[i].completed,
          collapseChecklist: data[i].collapseChecklist,
          isDue: data[i].isDue,
          isActive: false,
          isSync: true));
    }
    TasksOrderCrud().tasksOrderCreate(pomoticaTasksOrder);
    return pomoticaTasksOrder;
  }

  void saveUserData(PomoticaUserModel userModel) {
    UserDataCrud().userDataCreate(userModel);
  }

  // PomoticaUserModel retriveUserData() {
  //   Isar isar = MyIsar.isar;
  //   PomoticaUserModel? userModel = isar.pomoticaUserModels.getSync(1);
  //   if (userModel == null) {
  //     userModel = PomoticaUserModel(
  //       id: 1,
  //       defaultWorkingTime: defaultWorkingTime,
  //       breakTime: breakTime,
  //       bigBreakTime: bigBreakTime,
  //       numberOfSessions: numberOfSessions,
  //       pomoCoins: pomoCoins,
  //       pomoGems: pomoGems,
  //       currentStatus: currentStatus,
  //       currentSession: currentSession,
  //     );
  //     saveUserData(userModel);
  //     return userModel;
  //   }
  //   return userModel;
  // }
}
