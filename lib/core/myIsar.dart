import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart' as path;
import 'package:pomotica/model/musicModel.dart';
import 'package:pomotica/model/pomoticaRecordModel.dart';

import '../model/pomoticaTasksOrderModel.dart';
import '../model/pomoticaUserModel.dart';

class MyIsar {
  static late Isar isar;

  static init() async {
    final dir = await path.getApplicationSupportDirectory();
    // print(dir.path);
    isar = await Isar.open(
      schemas: [PomoticaTasksOrderSchema, PomoticaUserModelSchema, PomoticaRecordModelSchema],
      directory: dir.path,
      inspector: true,
    );
  }
}
