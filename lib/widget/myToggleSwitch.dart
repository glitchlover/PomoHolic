import 'package:flutter/material.dart';
import 'package:pomotica/styles/colors.dart';

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
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
                color: !widget.value?Theme.of(context).primaryColor.withOpacity(.5):Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.all(Radius.circular(50)),
            ),
            child: AnimatedSlide(
              offset: Offset(position * (widget.value ? -1 : 1), - 0.05),
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInExpo,
              child: Container(
                constraints: const BoxConstraints(maxWidth: 17, maxHeight: 17),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: widget.value? Theme.of(context).toggleableActiveColor:MyColors.lighten(Theme.of(context).primaryColor, 20),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: MyColors.darken(widget.value
                          ?Theme.of(context).secondaryHeaderColor
                          :Theme.of(context).primaryColor, 58),
                      blurRadius: 0,
                      offset: const Offset(0.0, 3.0),
                    ),
                  ],
                ),
              ),
              
            ),
          ),
    );
  }
}