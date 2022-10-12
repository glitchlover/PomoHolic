import 'package:flutter/material.dart';
import 'package:pomotica/Themes/myText.dart';

class SomethingWentWrongScreen extends StatelessWidget {
  const SomethingWentWrongScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MyText("Something Went Wrong").heading1(),
    );
  }
}