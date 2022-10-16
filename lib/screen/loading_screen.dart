// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:pomotica/model/authModel.dart';
import 'package:pomotica/screen/home/home_screen.dart';
import 'package:pomotica/styles/text_style.dart';

class LoadingScreen extends StatefulWidget {
  AuthModel? authModel;
  bool loaded = false;
  LoadingScreen({Key? key, this.authModel}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (widget.authModel != null)? HomeScreen():Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            const CircularProgressIndicator(),
            MyText("Loading").heading1(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
