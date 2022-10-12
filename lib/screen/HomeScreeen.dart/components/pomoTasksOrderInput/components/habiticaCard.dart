import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:iconsax/iconsax.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:pomotica/database/tasksOrderCrud.dart';
import 'package:pomotica/screen/HomeScreeen.dart/components/PomoSpace/pomoSpace.dart';
import 'package:pomotica/screen/HomeScreeen.dart/components/pomoTasksOrderInput/pomoTasksOrderInput.dart';
import 'package:pomotica/screen/HomeScreeen.dart/homeScreen.dart';
import 'package:pomotica/screen/TimerScreen.dart';
import 'package:pomotica/widget/myIconButton.dart';

import '../../../../../Themes/myColors.dart';
import '../../../../../Themes/myText.dart';

class HabiticaCard extends StatelessWidget {
  final String title;
  final int id;
  final String? tag;
  final String? notes;
  final DateTime? dueDate;

  const HabiticaCard(
      {Key? key,
      required this.title,
      required this.id,
      this.tag,
      this.notes,
      this.dueDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    PomoSpaceControllers ctrl = Get.put(PomoSpaceControllers());
    PomoTasksOrderInputController pctrl =
        Get.put(PomoTasksOrderInputController());
    return Padding(
      padding: const EdgeInsets.all(6.5),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: new BorderRadius.all(Radius.circular(10)),
          boxShadow: <BoxShadow>[
            new BoxShadow(
              color: MyColors.darken(MyColors.purple, 50),
              blurRadius: 0,
              offset: new Offset(0.0, 5.0),
            ),
          ],
        ),
        child: Dismissible(
          key: Key(id.toString()),
          onDismissed: (_) {
            pctrl.tasks.removeWhere((element) => element.pomoticataskid == id);
            TasksOrderCrud().tasksOrderDelete(id);
            pctrl.updateTaskList();
          },
          child: ExpansionTile(
            controlAffinity: ListTileControlAffinity.leading,
            // backgroundColor: MyColors.backgroundColorLight,
            // collapsedBackgroundColor: MyColors.backgroundColorLight,
            tilePadding: EdgeInsets.all(4),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                MyIconButton(
                        onPressed: () {
                          ctrl.updateActiveTasks(pomoActiveTaskId: id);
                        },
                        icon: Icon(Iconsax.clock))
                    .paint(size: 20),
                MyIconButton(
                    onPressed: () {
                      PomoTasksOrderInput().addTaskDialog(edit: true, id:id);
                    },
                    icon: Icon(Iconsax.edit_2)).paint(size: 20),
              ],
            ),
            title: Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: MarkdownTile(
                  data: title,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ).paint()),
            // subtitle: subTitle(),
            children: [MarkdownTile(data: notes != null ? notes! : "")],
            // childrenPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            expandedAlignment: Alignment.centerLeft,
            childrenPadding: EdgeInsets.only(left: 20, right: 10, bottom: 10),
          ),
        ),
      ),
    );
  }

  Column subTitle() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            tag != null
                ? Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color.fromARGB(255, 65, 71, 74),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 3),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Iconsax.tag, size: 12),
                        SizedBox(width: 2),
                        MarkdownTile(
                          data: tag!,
                          fontSize: 12,
                        ).paint(),
                      ],
                    ),
                  )
                : MarkdownTile(data: ""),
          ],
        ),
        SizedBox(height: 2),
        dueDate != null
            ? Row(
                children: [
                  Icon(Iconsax.clock, size: 12),
                  SizedBox(width: 3),
                  MarkdownTile(
                          data: dueDate!.day.toString().padLeft(2, "0") +
                              "-" +
                              dueDate!.month.toString().padLeft(2, "0") +
                              "-" +
                              dueDate!.year.toString().padLeft(2, "0"))
                      .paint(),
                ],
              )
            : MyText(""),
      ],
    );
  }
}

class MarkdownTile extends MarkdownBody {
  FontWeight? fontWeight = FontWeight.normal;
  Color? color = MyColors.primaryWhite;
  double? fontSize = 12;
  MarkdownTile(
      {Key? key,
      required String data,
      this.fontWeight,
      this.fontSize,
      this.color})
      : super(
            key: key,
            data: data,
            styleSheet: MarkdownStyleSheet(
              h2: TextStyle(
                  color: color, fontWeight: fontWeight, fontSize: fontSize),
              p: TextStyle(
                  color: color, fontWeight: fontWeight, fontSize: fontSize),
            ));

  paint() {
    return MarkdownBody(
      softLineBreak: true,
      data: data,
      styleSheet: MarkdownStyleSheet(
          h2: MyText.textThemePoppins(color, fontWeight, fontSize),
          p: MyText.textThemePoppins(color, fontWeight, fontSize)),
      extensionSet: md.ExtensionSet(
        md.ExtensionSet.gitHubFlavored.blockSyntaxes,
        [md.EmojiSyntax(), ...md.ExtensionSet.gitHubFlavored.inlineSyntaxes],
      ),
    );
  }
}