import 'dart:math';

import 'package:flutter/material.dart';

class bottomBorder extends CustomPainter {
  final double borderLineSize;
  final double startPointX;
  final Color borderColor;

  const bottomBorder({
    required this.borderLineSize,
    required this.startPointX,
    required this.borderColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    var radius = 4.0;
    var radius2 = 8.0;
    var arcRadius = radius * sqrt(3);
    var depth = 5 * sqrt(3);
    var bottom = size.height - 10;
    final paint = Paint()
      ..strokeWidth = borderLineSize
      ..color = borderColor;

    final path = Path();
    path.moveTo(startPointX, 0);
    path.lineTo(startPointX, bottom - radius2);
    path.quadraticBezierTo(0, bottom, radius2, bottom);

    path.lineTo(20 - radius, bottom);
    path.arcToPoint(
        Offset(
            20 + radius * cos(pi * 1 / 3), bottom + radius * sin(pi * 1 / 3)),
        radius: Radius.circular(arcRadius),
        clockwise: true);
    path.lineTo(25 - radius * cos(pi * 1 / 3),
        bottom + depth - radius * sin(pi * 1 / 3));
    path.arcToPoint(
        Offset(
          25 + radius,
          bottom + depth,
        ),
        radius: Radius.circular(arcRadius),
        clockwise: false);

    path.lineTo(65 - radius, bottom + depth);
    path.arcToPoint(
        Offset(65 + radius * cos(pi * 1 / 3),
            bottom + depth - radius * sin(pi * 1 / 3)),
        radius: Radius.circular(arcRadius),
        clockwise: false);
    path.lineTo(
        70 - radius * cos(pi * 1 / 3), bottom + radius * sin(pi * 1 / 3));
    path.arcToPoint(Offset(70 + radius, bottom),
        radius: Radius.circular(arcRadius), clockwise: true);
    path.lineTo(size.width, bottom);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
