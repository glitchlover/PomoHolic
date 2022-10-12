import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/progress_bar/gf_progress_bar.dart';
import 'package:pomotica/Themes/myThemeManager.dart';
import 'package:stacked_themes/stacked_themes.dart';

import '../Themes/myColors.dart';

class MyToggleSwitch extends StatefulWidget {
  const MyToggleSwitch({Key? key, required this.value, required this.onTap})
      : super(key: key);

  final Function() onTap;
  final bool value;

  @override
  State<MyToggleSwitch> createState() => _MyToggleSwitchState();
}

class _MyToggleSwitchState extends State<MyToggleSwitch> {
  double position = -0.25;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: widget.onTap,
          child: Container(
            height: 35,
            width: 55,
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
                color: !widget.value?Theme.of(context).primaryColor.withOpacity(.5):Theme.of(context).primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: AnimatedSlide(
              offset: Offset(position * (widget.value ? -1 : 1), - 0.05),
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInExpo,
              child: Container(
                constraints: BoxConstraints(maxWidth: 17, maxHeight: 17),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: widget.value? Theme.of(context).toggleableActiveColor:MyColors.lighten(Theme.of(context).primaryColor, 20),
                  boxShadow: <BoxShadow>[
                    new BoxShadow(
                      color: MyColors.darken(widget.value
                          ?Theme.of(context).secondaryHeaderColor
                          :Theme.of(context).primaryColor, 58),
                      blurRadius: 0,
                      offset: new Offset(0.0, 3.0),
                    ),
                  ],
                ),
              ),
              
            ),
          ),
    );
  }
}