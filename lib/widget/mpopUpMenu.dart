import 'dart:io';

import 'package:flutter/material.dart';

class MpopUpMenu extends StatefulWidget {
  final FileSystemEntity entity;
  const MpopUpMenu(this.entity);

  @override
  State<MpopUpMenu> createState() => _MpopUpMenuState();
}

class _MpopUpMenuState extends State<MpopUpMenu> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PopupMenuButton(
        tooltip: "",
        itemBuilder: (context) => [
              const PopupMenuItem(
                value: "delete",
                child: Text("delete"),
              ),
              const PopupMenuItem(
                child: Text("favourite"),
              )
            ]);
  }
}
