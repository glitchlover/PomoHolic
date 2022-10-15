import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pomotica/Themes/myColors.dart';
import 'package:pomotica/Themes/myThemeManager.dart';
import 'package:pomotica/widget/myAppBar.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:stacked_themes/stacked_themes.dart';

import '../Themes/myText.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(action: [], text: "Setting ⚙️").paint(),
        body: GetBuilder<SettingScreenController>(
            init: SettingScreenController(),
            initState: (_) {},
            builder: (ctrl) {
              return SettingsList(
                sections: [
                  SettingsSection(
                    title: MyText("General").heading3(),
                    tiles: [
                      SettingsTile.switchTile(
                          initialValue: ctrl.setWake.value,
                          description: MyText(
                              "Phone screen will not be shutdown while timer is on"),
                          onToggle: (isSelected) {
                            ctrl.setWake.value = isSelected;
                            ctrl.update();
                          },
                          title: MyText("Wake Up Mode")),
                      SettingsTile.switchTile(
                          initialValue: ctrl.setFocus.value,
                          onToggle: (value) {
                            ctrl.setFocus.value = value;
                            ctrl.update();
                          },
                          description: MyText(
                              "You can't exit PomoHolic while clock is running"),
                          title: MyText("Focus Mode")),
                      SettingsTile.switchTile(
                          initialValue: ctrl.setAuto.value,
                          description: MyText(
                              "Pomodoro will switch between focus and rest automatically"),
                          onToggle: (value) {
                            ctrl.setAuto.value = value;
                            ctrl.update();
                          },
                          title: MyText("Auto Pomodooro")),
                    ],
                  ),
                  SettingsSection(
                    title: MyText("Notification").heading3(),
                    tiles: [
                      SettingsTile.switchTile(
                          initialValue: ctrl.setNotify.value,
                          description: MyText(
                              "Will notify while switching between focus time and break tme "),
                          onToggle: (value) {
                            ctrl.setNotify.value = value;
                            ctrl.update();
                          },
                          title: MyText("Notify me")),
                    ],
                  ),
                  SettingsSection(
                    title: MyText("Theme").heading3(),
                    tiles: [
                      SettingsTile(
                        title: MyText("Custom Theme"),
                        trailing: MyText("Theme",
                                color: MyColors.primaryWhite.withOpacity(.5))
                            .text(12),
                        onPressed: (context) {
                          themeDialog(context);
                        },
                      )
                    ],
                  ),
                ],
              );
            }));
  }
}

themeDialog(BuildContext context) {
  SettingScreenController ctrl = Get.put(SettingScreenController());
  return Get.dialog(AlertDialog(
    content: Container(
        height: Get.height - 200,
        width: Get.width - 50,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            MyText("Choose Theme").heading3(),
            Divider(
              height: 50,
            ),
            Column(
              children:
                  // MyText("Choose Theme").heading3(),
                  MyThemeManager().getThemeNames().values.map((e) {
                // int index =
                return Obx(() => RadioListTile(
                      title: Text(e),
                      value: MyThemeManager()
                          .getThemeNames()
                          .values
                          .toList()
                          .indexOf(e),
                      groupValue: ctrl.selected.value,
                      onChanged: (int? value) {
                        ctrl.selected.value = value!;
                        ctrl.update();
                        getThemeManager(context)
                            .selectThemeAtIndex(ctrl.selected.value);
                      },
                    ));
              }).toList(),
            ),
          ],
        )),
  ));
}

class SettingScreenController extends GetxController {
  Rx<int> selected = 0.obs;
  Rx<bool> setNotify = false.obs;
  Rx<bool> setWake = false.obs;
  Rx<bool> setFocus = false.obs;
  Rx<bool> setAuto = false.obs;
}
