import 'package:flutter/material.dart';
import 'dart:math';

class NewDafultTailborder extends CustomPainter {
  final double borderLineSize;
  final Color borderColor;

  const NewDafultTailborder({
    required this.borderLineSize,
    required this.borderColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    var radius = 4.0;
    var arcRadius = radius * sqrt(3);
    var bottom = size.height - 10;
    var depth = 5 * sqrt(3);

    final paint = Paint()
      ..strokeWidth = borderLineSize
      ..color = borderColor;

    var path = Path();
    path.moveTo(8, bottom);

    //육각형 시작
    path.lineTo(20 - radius, bottom);
    path.arcToPoint(
        Offset(
            20 + radius * cos(pi * 1 / 3), bottom + radius * sin(pi * 1 / 3)),
        radius: Radius.circular(arcRadius),
        clockwise: true);
    path.lineTo(25 - radius * cos(pi * 1 / 3),
        bottom + depth - radius * sin(pi * 1 / 3));

    path.arcToPoint(Offset(25 + radius, bottom + depth),
        radius: Radius.circular(arcRadius), clockwise: false);

    path.lineTo(55 - radius, bottom + depth);

    path.arcToPoint(
        Offset(55 + radius * cos(pi * 1 / 3),
            bottom + depth - radius * sin(pi * 1 / 3)),
        radius: Radius.circular(arcRadius),
        clockwise: false);
    path.lineTo(
        60 - radius * cos(pi * 1 / 3), bottom + radius * sin(pi * 1 / 3));
    path.arcToPoint(Offset(60 + radius, bottom),
        radius: Radius.circular(arcRadius), clockwise: true);

    //육각형 끝
    path.lineTo(size.width, bottom);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
