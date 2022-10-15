import 'package:flutter/material.dart';
import 'package:pomotica/Themes/myText.dart';
import 'package:pomotica/widget/myAppBar.dart';

class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(action: [],).paint(),
      body: Center(
        child: MyText("This feature will come soon").text(20),
      )
    );
  }
}