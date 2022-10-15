import 'package:flutter/material.dart';

class MyColors {
  static const brightness = Brightness.dark;
  static const appBackgroundColor = Color.fromARGB(255, 25, 15, 44);
  static const scaffoldBackgroundColor = Color(0XFF291946);
  static const backgroundColor = Color(0xFF19171C);
  static const backgroundColorLight = Color(0xFF211F2A);
  static const secondarybackgroundColor = Color.fromARGB(255, 11, 2, 27);
  static const shadowColor = Color.fromARGB(255, 33, 16, 48);
  static const dividerColor = Color.fromARGB(177, 66, 41, 110);
  static const primaryColor = Color(0xFF018ff5);
  static const primaryColorLight = Color.fromARGB(255, 86, 176, 250);
  static const blue = Color.fromARGB(255, 86, 176, 250);
  static const purple = Color(0xFF6133B4);
  static const pink = Color.fromARGB(255, 250, 93, 127);
  static const pinkDark = Colors.pinkAccent;
  static const red = Colors.red;
  static const yellow = Color(0xFFF2A32F);
  static const green = Color.fromARGB(255, 21, 177, 120);
  static const grey = Color.fromARGB(255, 63, 77, 83);
  static const black = Color(0xff1F1F1F);
  static const primaryWhite =
      Color.fromARGB(255, 221, 223, 235); //TODO: change here also
  static const toggleableActiveColor = primaryColor;

  static Color darken(Color c, [int percent = 10]) {
    assert(1 <= percent && percent <= 100);
    var f = 1 - percent / 100;
    return Color.fromARGB(c.alpha, (c.red * f).round(), (c.green * f).round(),
        (c.blue * f).round());
  }

  /// Lighten a color by [percent] amount (100 = white)
// ........................................................
  static Color lighten(Color c, [int percent = 10]) {
    assert(1 <= percent && percent <= 100);
    var p = percent / 100;
    return Color.fromARGB(
        c.alpha,
        c.red + ((255 - c.red) * p).round(),
        c.green + ((255 - c.green) * p).round(),
        c.blue + ((255 - c.blue) * p).round());
  }
}
