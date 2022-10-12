import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:pomotica/model/authModel.dart';
import 'package:pomotica/model/HabiticaTaskModel.dart';
import 'package:pomotica/services/habiticaAuthServices.dart';

import '../model/habiticaUserModel.dart';

class DocumentServices {
  final String masterDb = "pomoticaDb";
  final String db;
  late final Directory masterDbFolder;
  late String _localPath;
  late File dbFile;

  ////////////////////////___constructor___////////////////////////
  DocumentServices({required this.db}) {
    setLocaPath();
    Timer(Duration(milliseconds: 1000), () {
      makeMasterDbFolder();
      makeDbFile();
    });
  }

  ////////////////////////___making files and folder___////////////////////////
  setLocaPath() async {
    final directory = await getApplicationDocumentsDirectory();
    _localPath = directory.path;
  }

  void makeMasterDbFolder() {
    masterDbFolder = Directory("$_localPath\\$masterDb");
    if (masterDbFolder.existsSync()) return;
    masterDbFolder.createSync();
  }

  void makeDbFile() {
    dbFile = File("$_localPath\\$masterDb\\$db");
    print("makeDbFile:" + dbFile.path);
    if (dbFile.existsSync()) return;
    dbFile.createSync();
  }

  ////////////////////////saving and retriving auth/////////////////////
  saveAuth(AuthModel authModel) async {
    await Future.delayed(Duration(milliseconds: 1000));
    var contents = authModel.toJson();
    print("saveAuth: " + contents);
    dbFile.writeAsStringSync(contents);
  }

  Future<String> retriveAuth() async {
    await Future.delayed(Duration(milliseconds: 1000));
    var content = json.decode(dbFile.readAsStringSync());

    var authModel = AuthModel(
        apiKey: content["apiKey"],
        userId: content["userId"],
        loggedIn: content["loggedIn"]);
    print("retriveAuth(): " + authModel.toString());

    if (!authModel.loggedIn) return "";
    var con = await HabiticaAuthServices([authModel.apiKey, authModel.userId])
        .getHabiticaConnection();
    if (con.contains("Error")) return con;
    if (con.contains("Not Connected")) return "Not Connected";

    return authModel.toJson();
  }

  saveUser(HabiticaUserModel habiticaUserModel) async {
    await Future.delayed(Duration(milliseconds: 1000));
    var contents = habiticaUserModel.toJson();
    print("saveUserData: " + contents.length.toString());
    dbFile.writeAsStringSync(contents);
  }

  Future<HabiticaUserModel> retriveUser() async {
    await Future.delayed(Duration(milliseconds: 1000));
    var contents = dbFile.readAsStringSync();
    // print("retriveUser: " + contents);
    HabiticaUserModel habiticaUserModel =
        HabiticaUserModel.fromJson(contents);

    return habiticaUserModel;
  }

  saveTasksOrder(HabiticaTaskModel tasksOrderModel) async{
    await Future.delayed(Duration(milliseconds: 1000));
    var contents = tasksOrderModel.toJson();
    print("saveUserData: " + contents.length.toString());
    dbFile.writeAsStringSync(contents);
  }

  Future<HabiticaTaskModel> retriveTasksOrder() async {
    await Future.delayed(Duration(milliseconds: 1000));
    var contents = dbFile.readAsStringSync();
    // print("retriveUser: " + contents);
    HabiticaTaskModel habiticaTaskModel =
        HabiticaTaskModel.fromJson(contents);

    return habiticaTaskModel;
  }
}