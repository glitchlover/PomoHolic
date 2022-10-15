// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:pomotica/styles/colors.dart';

class MyContainer extends StatefulWidget {
  final Color? color;
  final Widget? child;
  final double height;
  final double width;

  const MyContainer(
      {this.color,
      required this.child,
      required this.height,
      required this.width});

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  double padding = 6;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GestureDetector(
            onTapDown: (details) => setState(() {
              padding = 0;
            }),
            onTapUp: (details) => setState(() {
              padding = 6;
            }),
            onTapCancel: () => setState(() {
              padding = 6;
            }),
            child: AnimatedContainer(
              decoration: BoxDecoration(
                color: widget.color != null?MyColors.darken(widget.color!, 30):null,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.only(bottom: padding),
              duration: const Duration(milliseconds: 5),
              child: Container(
                width: widget.width,
                height: widget.height,
                child: widget.child,
                decoration: BoxDecoration(
                  color: widget.color,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
    );
  }
}
