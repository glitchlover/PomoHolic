import 'package:flutter/material.dart';
import 'package:pomotica/Themes/myColors.dart';

class MyStepProgressBar extends StatelessWidget {
  const MyStepProgressBar({
    Key? key,
    required this.currentStep,
    required this.totalSteps,}) :super(key: key);

  final int currentStep;
  final int totalSteps;

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;
    // if you are wrapping this widget in some padding
    const leftPadding = 200.0;
    const rightPadding = 200.0;

    // width of the separete widget
    const separatedWidth = 5.0;

    return Padding(
      padding: const EdgeInsets.only(top: 20, left: leftPadding, right: rightPadding, bottom: 0),
      child: Container(
        constraints: BoxConstraints(maxHeight: 2, maxWidth: screenWidth),
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: totalSteps,
          separatorBuilder: (context, index) => const SizedBox(width: separatedWidth,),
          itemBuilder: (context, position) {
            return Container(
              height: 20,
              width: (screenWidth - ((totalSteps - 1) * separatedWidth)
                      - (leftPadding + rightPadding)) / totalSteps,
              decoration: BoxDecoration(
                // color: MyColors.appBackgroundColor,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Container(
                height: 20,
                decoration: BoxDecoration(
                color: currentStep - 1 >= position ? MyColors.yellow : Colors.transparent,
                borderRadius: BorderRadius.circular(20)
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}