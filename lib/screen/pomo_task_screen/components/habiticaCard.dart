import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:pomotica/database/tasksOrderCrud.dart';
import 'package:pomotica/screen/pomo_space_screen/pomo_space_screen.dart';
import 'package:pomotica/screen/pomo_space_screen/pomo_space_screen.dart';
import 'package:pomotica/screen/pomo_task_screen/pomo_task_screen.dart';
import 'package:pomotica/styles/colors.dart';
import 'package:pomotica/styles/text_style.dart';
import 'package:pomotica/widget/myIconButton.dart';

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
    PomoSpaceControllers ctrl = Get.find<PomoSpaceControllers>();
    PomoTasksOrderInputController pctrl =
        Get.put(PomoTasksOrderInputController());
    return Padding(
      padding: const EdgeInsets.all(6.5),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: MyColors.darken(MyColors.purple, 50),
              blurRadius: 0,
              offset: const Offset(0.0, 5.0),
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
            tilePadding: const EdgeInsets.all(4),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                MyIconButton(
                        onPressed: () {
                          ctrl.updateActiveTasks(pomoActiveTaskId: id);
                        },
                        icon: const Icon(Iconsax.clock))
                    .paint(size: 20),
                MyIconButton(
                        onPressed: () {
                          const PomoTasksOrderInput()
                              .addTaskDialog(edit: true, id: id);
                        },
                        icon: const Icon(Iconsax.edit_2))
                    .paint(size: 20),
              ],
            ),
            title: Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: MarkdownTile(
                  data: title,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ).paint()),
            // subtitle: subTitle(),
            children: [MarkdownTile(data: notes != null ? notes! : "")],
            // childrenPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            expandedAlignment: Alignment.centerLeft,
            childrenPadding:
                const EdgeInsets.only(left: 20, right: 10, bottom: 10),
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
                      color: const Color.fromARGB(255, 65, 71, 74),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 3),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Iconsax.tag, size: 12),
                        const SizedBox(width: 2),
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
        const SizedBox(height: 2),
        dueDate != null
            ? Row(
                children: [
                  const Icon(Iconsax.clock, size: 12),
                  const SizedBox(width: 3),
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
