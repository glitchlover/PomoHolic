import 'package:flutter/material.dart';
import 'package:pomotica/styles/text_style.dart';

class SomethingWentWrongScreen extends StatelessWidget {
  const SomethingWentWrongScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MyText("Something Went Wrong").heading1(),
    );
  }
}