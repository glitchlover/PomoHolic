// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';
import 'dart:isolate';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:pomotica/screen/HomeScreeen.dart/components/PomoSpace/pomoSpace.dart';

class Iso {
  Iso({
    required this.debugName,
  });

  String debugName;

  startEngine(Function heavyFunc) async {
    ReceivePort receivePort = ReceivePort();
    // await compute(PomoSpaceControllers.startTimer(), dynamic);
    SendPort childSendPort = await receivePort.first;

    ReceivePort responsePort = ReceivePort();
    childSendPort.send(["⏱️ Hello I am a time isolate", responsePort.sendPort, heavyFunc]);
  }

  static void entryPort(SendPort mainSendPort) async {
    ReceivePort childReceiveport = ReceivePort();
    mainSendPort.send(childReceiveport.sendPort);
    await for (var message in childReceiveport) {
      print(message[0]);
      SendPort replyPort = message[1];
      replyPort.send(message[2]);
    }
  }
  // stop() {
  //   _isolate == null ? null : _myRecievePort.close();
  // }
}
