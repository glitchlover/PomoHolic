import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pomotica/screen/home/components/PomoSpace/pomoSpace.dart';
import 'package:pomotica/styles/colors.dart';
import 'package:pomotica/styles/text_style.dart';

class PomoTaskName extends StatelessWidget {
  final PomoSpaceControllers pctrl;
  const PomoTaskName({Key? key, required this.pctrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TaskName(pctrl: pctrl);
  }
}

class TaskName extends StatelessWidget {
  final PomoSpaceControllers pctrl;
  const TaskName({
    Key? key,
    required this.pctrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: MyColors.primaryWhite.withOpacity(.2),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.circle,
              size: 12,
              color: MyColors.primaryWhite.withOpacity(.3)),
          const SizedBox(width: 5),
          AutoSizeText(pctrl.pomoActiveTask.value, style: MyText.textThemePoppins(MyColors.primaryWhite.withOpacity(.9), FontWeight.w500, 16))
        ],
      ),
    );
  }
}

class TagName extends StatelessWidget {
  const TagName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        // color: MyColors.primaryWhite.withOpacity(.3),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Iconsax.tag_cross, size: 16),
          const SizedBox(width: 2),
          MyText('Hello world!').textt(),
        ],
      ),
    );
  }
}
