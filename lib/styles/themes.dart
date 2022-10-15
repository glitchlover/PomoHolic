import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'colors.dart';

class MyThemes{
  ThemeData baseTheme(){
    return ThemeData(
        brightness: Brightness.dark,
        primaryColor: MyColors.purple,
        primaryColorDark: MyColors.darken(Get.theme.primaryColor, 80),
        secondaryHeaderColor: MyColors.pinkDark,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: MyColors.pinkDark),
        backgroundColor: MyColors.darken(MyColors.purple, 70),
        scaffoldBackgroundColor: MyColors.darken(MyColors.purple, 70),
        dialogBackgroundColor: MyColors.darken(MyColors.purple, 60),
        cardTheme: CardTheme(
          color: MyColors.darken(MyColors.purple, 20),
          shadowColor: MyColors.darken(MyColors.purple, 90),
        ),
        expansionTileTheme: ExpansionTileThemeData(
          backgroundColor: MyColors.darken(MyColors.purple, 40),
          iconColor: MyColors.primaryWhite,
          textColor: MyColors.primaryWhite,
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: MyColors.purple,
          splashColor: MyColors.darken(MyColors.purple, 90)
        ),
        toggleableActiveColor: const Color.fromARGB(255, 252, 113, 143),
      );
  }
  ThemeData theme1(){
    return ThemeData(
        brightness: Brightness.dark,
        primaryColor: MyColors.green,
        backgroundColor: MyColors.darken(MyColors.green, 50),

      );
  }
  ThemeData theme2(){
    return ThemeData(
        brightness: Brightness.dark,
        primaryColor: MyColors.pinkDark,
        backgroundColor: MyColors.darken(MyColors.pink, 50),

      );
  }
  ThemeData theme3(){
    return ThemeData(
        brightness: Brightness.dark,
        primaryColor: MyColors.purple,
        backgroundColor: MyColors.darken(MyColors.primaryWhite, 50),

      );
  }
}
