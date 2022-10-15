import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pomotica/Themes/myText.dart';
import 'package:pomotica/screen/HomeScreeen.dart/homeScreen.dart';
import 'package:pomotica/widget/myIconButton.dart';

class MyAppBar extends AppBar {
  List<Widget> action;
  bool? disableBackButton;
  bool isHomeScreen;
  String? text;
  MyAppBar(
      {required this.action,
      this.disableBackButton,
      this.text,
      this.isHomeScreen = false});
  AppBar paint() {
    return AppBar(
      
      automaticallyImplyLeading: !isHomeScreen,
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      leading: !isHomeScreen
          ? MyIconButton(
              onPressed: () {
                Get.off(() => HomeScreen());
              },
              icon: Icon(Icons.arrow_back))
          : null,
      title: text==null?Container(
        constraints: BoxConstraints(maxHeight: 56),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: action,
        ),
      ):MyText(text!).text(18),
    );
  }
}
