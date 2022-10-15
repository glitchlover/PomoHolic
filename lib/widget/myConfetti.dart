import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pomotica/widget/myParticles.dart';

class MyConfetti extends StatefulWidget {
  bool isRewarded;
  MyConfetti({
    Key? key,
    required this.isRewarded,
  }) : super(key: key);

  @override
  State<MyConfetti> createState() => _MyConfettiState();
}

class _MyConfettiState extends State<MyConfetti>
    with SingleTickerProviderStateMixin {
  List<MyParticles> particles = <MyParticles>[];
  late Animation animation;
  late AnimationController animCtrl;
  Random rgn = Random(DateTime.now().millisecondsSinceEpoch);

  @override
  void initState() {
    super.initState();
    particles = List<MyParticles>.generate(100, (index) {
      int a = rgn.nextInt(255);
      int r = rgn.nextInt(255);
      int g = rgn.nextInt(255);
      int b = rgn.nextInt(255) + 200;
      return MyParticles(
        color: Color.fromARGB(a, r, g, b),
        position: Offset(
            rgn.nextDouble() * Get.width / 4 * (rgn.nextBool() ? -1 : 1),
            rgn.nextDouble() * Get.height / 4 * (rgn.nextBool() ? -1 : 1)),
        size: Size(rgn.nextDouble() * 5 + 1, rgn.nextDouble() * 20 + 5),
        theta: rgn.nextDouble() * pi * (rgn.nextBool() ? -1 : 1),
        speed: .005,
      );
    });
    // Animations

    animCtrl = AnimationController(vsync: this, duration: Duration(seconds: 10))
      ..repeat();
    animation = Tween<double>(begin: 0, end: 300).animate(animCtrl)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
        }
      })
      ..addListener(() {
        particles.forEach((p) {
          setState(() {
            p.position = Offset(p.position.dx + animation.value * p.theta,
                p.position.dy + animation.value);
          });
        });
      });
    animCtrl.forward();
  }

  @override
  void dispose() {
    animCtrl.dispose();
    super.dispose();
  }
  // animation.value.value.

  @override
  Widget build(BuildContext context) {
    return widget.isRewarded
        ? Align(
            child: CustomPaint(
              painter: MyPainterCanvas(
                animVal: animCtrl.value,
                particles: particles,
                rgn: rgn,
              ),
            ),
          )
        : Container();
  }
}

class MyPainterCanvas extends CustomPainter {
  double animVal;
  List<MyParticles> particles;
  Random rgn;

  MyPainterCanvas({
    required this.animVal,
    required this.particles,
    required this.rgn,
  });

  Offset polarToCartesian(double speed, double theta) {
    return Offset(speed * cos(theta), speed * sin(theta));
  }

  @override
  void paint(Canvas canvas, Size size) {
    this.particles.forEach((p) {
      //Update
      var velocity = polarToCartesian(p.speed, p.theta);
      var dx = p.position.dx + velocity.dx;
      var dy = p.position.dy + velocity.dy;

      if (p.position.dx < -Get.width / 2 || p.position.dx > Get.width / 2) {
        dx = rgn.nextDouble() * 20 - 40 * Get.width;
      }
      if (p.position.dy < -Get.height / 2 || p.position.dy > Get.height / 2) {
        dy = rgn.nextDouble() * 20 - 40 * Get.height;
      }
      p.position = Offset(dx, dy);

      //Paint
      var paint = Paint();

      paint.color = p.color;
      canvas.drawRect(p.position & p.size, paint);
      canvas.rotate(p.theta);
      // canvas.transform(
      //   Float64List(16)
      // );
    });
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
