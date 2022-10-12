import 'package:flutter/material.dart';
import 'package:pomotica/Themes/myColors.dart';
import 'package:pomotica/Themes/myThemes.dart';
import 'package:pomotica/Themes/purpleTheme.dart';

class MyThemeManager {
  List<ThemeData> getThemes() {
    return [
      MyThemes().baseTheme(),
      MyThemes().theme1(),
      MyThemes().theme2(),
      MyThemes().theme3(),
    ];
  }

  Map<ThemeData, String> getThemeNames() {
    return {
      MyThemes().baseTheme():"Purple Theme (Pallate from habitica)",
      MyThemes().theme1(): "Theme 1",
      MyThemes().theme2(): "Theme 2",
      MyThemes().theme3(): "Theme 3",
      };
  }
}
