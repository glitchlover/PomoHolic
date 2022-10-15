import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pomotica/Themes/myColors.dart';
import 'package:pomotica/Themes/myText.dart';

class MyTaskInput extends StatelessWidget {
  MyTaskInput({
    Key? key,
    required this.title,
    this.txtctrl,
    this.widget,
    required this.onChanged,
  }) : super(key: key);

  final Function(String value) onChanged;
  final String title;
  final TextEditingController? txtctrl;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    // TextEditingController ctrl = TextEditingController();
    // txtctrl?.text =
    //     title.contains("Date") ? DateFormat.yMd().format(DateTime.now()) : txtctrl!.text;
    return Container(
        constraints: BoxConstraints.tight(
            Size(Get.width - 100, title == "Notes" ? 150 : 86)),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [SizedBox(width: 5), MyText(title).text()],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6),
                decoration: BoxDecoration(
                  // border: Border.all(color: MyColors.dividerColor, width: 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  controller:txtctrl,
                  autofocus: false,
                  readOnly: widget != null ? true : false,
                  // maxFontSize: 16,
                  maxLines: title == "Notes" ? 4 : 1,
                  style: MyText.textThemePoppins(
                      MyColors.primaryWhite, FontWeight.w400, 16),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    suffix: widget
                  ),
                  onChanged: onChanged,
                ),
              )
            ]));
  }
}
