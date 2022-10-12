import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pomotica/core/myIsar.dart';

import '../model/pomoticaRecordModel.dart';

class PomoticaRecordCrud {
  static final Isar isar = MyIsar.isar;

  recordsOrderCreate(List<PomoticaRecordModel> records) {
    for (var record in records) {
      isar.writeTxnSync((isar) => isar.pomoticaRecordModels.putSync(record));
    }
  }

  recordsOrderUpdate(PomoticaRecordModel record) {
    isar.writeTxnSync((isar) => isar.pomoticaRecordModels.putSync(record));
  }

  List<PomoticaRecordModel> recordsOrderGetAll() {
    return isar.pomoticaRecordModels.where().findAllSync();
  }

  Future<PomoticaRecordModel?> recordsOrderGet(int id) async {
    return (await isar.pomoticaRecordModels.get(id));
  }

  void recordsOrderDelete(int id){
    // final records =
    isar.writeTxnSync((isar) => isar.pomoticaRecordModels.deleteSync(id));
  }
}
