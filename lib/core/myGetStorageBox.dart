import 'package:get_storage/get_storage.dart';

class MyGetStorage {
  GetStorage box = GetStorage("reward");

  init() async {
    await box.writeIfNull("coin", 0);
    await box.writeIfNull("gem", 0);
  }
}
