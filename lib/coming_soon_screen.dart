import 'package:flutter/material.dart';
import 'package:pomotica/styles/text_style.dart';
import 'package:pomotica/widget/myAppBar.dart';

class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(action: const [],).paint(),
      body: Center(
        child: MyText("This feature will come soon").text(20),
      )
    );
  }
}