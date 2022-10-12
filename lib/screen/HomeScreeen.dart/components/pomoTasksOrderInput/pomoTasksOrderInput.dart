import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/form/form_field/widgets/gf_formradiobutton.dart';
import 'package:getwidget/getwidget.dart';
import 'package:iconsax/iconsax.dart';
import 'package:isar/isar.dart';
import 'package:pomotica/Themes/myColors.dart';
import 'package:pomotica/Themes/myText.dart';
import 'package:pomotica/core/habiticaApi.dart';
import 'package:pomotica/core/myIsar.dart';
import 'package:pomotica/database/tasksOrderCrud.dart';
import 'package:pomotica/model/HabiticaTaskModel.dart';
import 'package:pomotica/model/pomoticaTasksOrderModel.dart';
import 'package:pomotica/model/pomoticaUserModel.dart';
import 'package:pomotica/screen/HomeScreeen.dart/homeScreen.dart';
import 'package:pomotica/services/userDataService.dart';
import 'package:pomotica/screen/HomeScreeen.dart/components/pomoTasksOrderInput/components/habiticaCard.dart';
import 'package:pomotica/widget/myAppBar.dart';
import 'package:pomotica/widget/myIconButton.dart';
import 'package:pomotica/widget/myTaskInput.dart';
import 'package:responsive_sizer/responsive_sizer.dart' as res;

class PomoTasksOrderInput extends StatelessWidget {
  PomoTasksOrderInput({Key? key}) : super(key: key);

  void addTaskDialog({bool edit = false, int? id}) {
    Get.dialog(AlertDialog(
        // backgroundColor: MyColors.appBackgroundColor,
        elevation: 20,
        content: SingleChildScrollView(
            child: GetBuilder<PomoTasksOrderInputController>(
          init: PomoTasksOrderInputController(),
          initState: (_) {},
          builder: (ctrl) {
            if (edit) {
              int index = ctrl.taskId.indexOf(id!);
              ctrl.notectrl.value.text = ctrl.tasksNotes[index];
              ctrl.titlectrl.value.text = ctrl.tasksOrder[index];
            }
            return Center(
                child: Container(
              // padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              child: Column(
                // mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Add Task",
                    style: MyText.textThemePoppins(
                        MyColors.primaryWhite, FontWeight.w400, 20),
                  ),
                  // SizedBox(height: 20, child: MyText("Add Task").heading3()),
                  MyTaskInput(
                    title: "Title",
                    txtctrl: ctrl.titlectrl.value,
                    onChanged: (value) {},
                  ),
                  MyTaskInput(
                    title: "Notes",
                    txtctrl: ctrl.notectrl.value,
                    onChanged: (value) {},
                  ),
                  // MyTaskInput(
                  //   title: "Due Date",
                  //   txtctrl: ctrl.datectrl.value,
                  //   widget: MyIconButton(
                  //     icon: Icon(
                  //       Iconsax.calendar_1,
                  //     ),
                  //     onPressed: () async => await ctrl.getDate(),
                  //   ).cicle(),
                  //   onChanged: (value) {
                  //     // ctrl.dueDate?.value = DateTime.parse(value);
                  //   },
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: TextButton(
                      onPressed: () async {
                        Get.back();
                        await ctrl.onSubmitButtonCall(edit: edit, id: id);
                      },
                      child: Text('Submit',
                          style: MyText.textThemePoppins(
                              MyColors.blue, FontWeight.w600, 20)),
                    ),
                  ),
                ],
              ),
            ));
          },
        ))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addTaskDialog();
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        // backgroundColor: MyColors.pinkDark,
      ),
      appBar: MyAppBar(
        action: [],
      ).paint(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: GetBuilder<PomoTasksOrderInputController>(
            init: PomoTasksOrderInputController(),
            initState: (_) {},
            builder: (value) {
              print(value.tasksOrder);
              if (value.tasks.isEmpty) {
                return Center(
                    child: MyText("Looks like you have no tasks!",
                            color: Color.fromARGB(155, 157, 167, 171))
                        .text(20));
              }
              return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (builder, index) => HabiticaCard(
                      title: value.tasksOrder[index].toString(),
                      id: value.taskId[index],
                      dueDate: value.tasksDueDate[index],
                      notes: value.tasksNotes[index],
                    ),
                    itemCount: value.tasksOrder.length,
                  ));
            }),
      ),
    );
  }
}

class PomoTasksOrderInputController extends GetxController {
  // List<dynamic> tasksType = [];

  Rx<TextEditingController> datectrl = TextEditingController().obs;
  Rx<TextEditingController> titlectrl = TextEditingController().obs;
  Rx<TextEditingController> notectrl = TextEditingController().obs;
  Rx<String> title = "".obs;
  Rx<String> notes = "".obs;
  Rx<DateTime>? startTime;
  Rx<DateTime?> dueDate = Rxn<DateTime?>();
  Rx<DateTime>? endTime;
  Isar isar = MyIsar.isar;

  RxList<String> tag = <String>[].obs;
  RxList<PomoticaTasksOrder> tasks = <PomoticaTasksOrder>[].obs;
  late List<dynamic> taskId;
  late List<dynamic> tasksDueDate;
  late List<dynamic> tasksNotes;
  late List<dynamic> tasksOrder;
  late List<dynamic> tasksTag;

  @override
  void onInit() async {
    updateTaskList();
    // datectrl.value.text =
    //     dueDate.value == null ? DateFormat.yMd().format(dueDate.value!) : "";
    update();
    super.onInit();
  }

  void updateTaskList() {
    tasks = TasksOrderCrud().tasksOrderGetAll().obs;
    taskId = [];
    tasksDueDate = [];
    tasksNotes = [];
    tasksOrder = [];
    tasksTag = [];

    for (var task in tasks) {
      if (task.type == "reward" || task.isActive == true) continue;
      tasksOrder.add(task.text);
      // tasksType.add(task.type);
      tasksDueDate.add(task.nextDue);
      tasksTag.add(task.tags);
      tasksNotes.add(task.notes);
      taskId.add(task.pomoticataskid);
      update();
    }
  }

  getDate() async {
    dueDate.value = (await showDatePicker(
      context: Get.context!,
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year - 100),
      lastDate: DateTime(DateTime.now().year + 100),
    ))!;
  }

  onSubmitButtonCall({bool edit = false, int? id}) async {
    // Map<String, dynamic> json = {
    //   "text": title.value,
    //   "type": type.value,
    // };
    // await HabiticaApi(path: "/api/v3/tasks/user").postTaskToApi(json);
    TasksOrderCrud().tasksOrderUpdate(PomoticaTasksOrder(
        pomoticataskid: id ?? DateTime.now().microsecondsSinceEpoch,
        notes: notectrl.value.text,
        text: titlectrl.value.text,
        isActive: false,
        isSync: false));
    notectrl.value.text = "";
    titlectrl.value.text = "";
    update();
    updateTaskList();
    tasks.refresh();
  }
}
