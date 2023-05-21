import 'dart:math';


import 'package:flutter/material.dart';
class CircleProgress extends CustomPainter
{
  @override
  final strokecircle = 13.0 ;
  double currentProgress ;
  CircleProgress(this.currentProgress);
  void paint(Canvas canvas, Size size) {
    Paint circle = Paint()
        ..strokeWidth = strokecircle
        ..color = Colors.black
        ..style = PaintingStyle.stroke;
    Offset center = Offset(size.width/2,size.height/2);
  double radius = 150;
  canvas.drawCircle(center, radius, circle);

  Paint animationArc = Paint()
    ..strokeWidth = strokecircle
    ..color = Colors.purpleAccent
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round ;

  double angle = 2* pi * (/*hon al t8yir */currentProgress/100);
  canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
      pi/2, angle, false, animationArc);

  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true ;
  }

}