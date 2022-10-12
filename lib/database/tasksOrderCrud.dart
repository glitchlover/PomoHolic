import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pomotica/core/myIsar.dart';

import '../model/pomoticaTasksOrderModel.dart';

class TasksOrderCrud {
  static final Isar isar = MyIsar.isar;

  tasksOrderCreate(List<PomoticaTasksOrder> tasks) {
    for (var task in tasks) {
      isar.writeTxnSync((isar) => isar.pomoticaTasksOrders.putSync(task));
    }
  }

  tasksOrderUpdate(PomoticaTasksOrder task) {
    isar.writeTxnSync((isar) => isar.pomoticaTasksOrders.putSync(task));
  }

  List<PomoticaTasksOrder> tasksOrderGetAll() {
    return isar.pomoticaTasksOrders.where().findAllSync();
  }

  Future<String> tasksOrderGet(int id) async {
    return (await isar.pomoticaTasksOrders.get(id))!.text;
  }

  void tasksOrderDelete(int id){
    // final tasks =
    isar.writeTxnSync((isar) => isar.pomoticaTasksOrders.deleteSync(id));
  }
}
