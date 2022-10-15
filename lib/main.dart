import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pomotica/core/myIsar.dart';
import 'package:pomotica/screen/HomeScreeen.dart/homeScreen.dart';
import 'package:pomotica/styles/theme_manager.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:stacked_themes/stacked_themes.dart';

import 'core/myGetStorageBox.dart';


main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ThemeManager.initialise();
  await MyIsar.init();
  await GetStorage.init("reward");
  await MyGetStorage().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // var data = Future.wait([UserDataService().fetchTaskModel()]);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
        themes: MyThemeManager().getThemes(),
        builder: (context, regularTheme, darkTheme, themeMode) {
          return GetMaterialApp(
              builder: (context, widget) => ResponsiveWrapper.builder(
                      ClampingScrollWrapper.builder(context, widget!),
                      breakpoints: const [
                        ResponsiveBreakpoint.resize(350, name: MOBILE),
                        ResponsiveBreakpoint.autoScale(800, name: TABLET),
                        ResponsiveBreakpoint.resize(1000, name: DESKTOP),
                        ResponsiveBreakpoint.autoScale(1700, name: "XL"),
                      ]),
              title: 'Pomotica',
              debugShowCheckedModeBanner: false,
              theme: regularTheme,
              darkTheme: darkTheme,
              themeMode: ThemeMode.light,
              home: const HomeScreen(),
              );
        });
  }
}
