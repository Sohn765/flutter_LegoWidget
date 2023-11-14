import 'package:flutter/material.dart';
import 'dart:math';

class DefaultTopBorder extends CustomPainter {
  final double borderLineSize;
  final Color borderColor;

  const DefaultTopBorder({
    required this.borderLineSize,
    required this.borderColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    var radius = 4.0;
    var radius2 = 8.0;
    var arcRadius = radius * sqrt(3);
    var bottom = size.height;
    var depth = 5 * sqrt(3);
    final paint = Paint()
      ..strokeWidth = borderLineSize
      ..color = borderColor;

    final path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(69 + radius, 0);
    path.arcToPoint(
        Offset(69 - radius * cos(pi * 1 / 3), 0 + radius * sin(pi * 1 / 3)),
        radius: Radius.circular(arcRadius),
        clockwise: false);
    path.lineTo(
        64 + (radius * cos(pi * 1 / 3)), depth - radius * sin(pi * 1 / 3));
    path.arcToPoint(Offset(64 - radius, depth),
        radius: Radius.circular(arcRadius), clockwise: true);
    path.lineTo(26 + radius, depth);
    path.arcToPoint(
        Offset(26 - radius * cos(pi * 1 / 3), depth - radius * sin(pi * 1 / 3)),
        radius: Radius.circular(arcRadius),
        clockwise: true);
    path.lineTo(21 + radius * cos(pi * 1 / 3), 0 + radius * sin(pi * 1 / 3));
    path.arcToPoint(Offset(21 - radius, 0),
        radius: Radius.circular(arcRadius), clockwise: false);
    path.lineTo(radius2, 0);

    path.quadraticBezierTo(0, 0, 0, radius2);
    path.lineTo(0, bottom);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
